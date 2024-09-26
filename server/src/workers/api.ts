import { NestFactory } from '@nestjs/core';
import { NestExpressApplication } from '@nestjs/platform-express';
import { json } from 'body-parser';
import cookieParser from 'cookie-parser';
import { existsSync } from 'node:fs';
import sirv from 'sirv';
import { ApiModule } from 'src/app.module';
import { excludePaths, resourcePaths, serverVersion } from 'src/constants';
import { envData, ImmichEnv } from 'src/env';
import { ILoggerRepository } from 'src/interfaces/logger.interface';
import { WebSocketAdapter } from 'src/middleware/websocket.adapter';
import { ApiService } from 'src/services/api.service';
import { isStartUpError } from 'src/utils/events';
import { otelStart } from 'src/utils/instrumentation';
import { useSwagger } from 'src/utils/misc';

async function bootstrap() {
  process.title = 'immich-api';

  const { port, metrics } = envData;

  otelStart(metrics.apiPort);

  const app = await NestFactory.create<NestExpressApplication>(ApiModule, { bufferLogs: true });
  const logger = await app.resolve<ILoggerRepository>(ILoggerRepository);

  logger.setAppName('Api');
  logger.setContext('Bootstrap');
  app.useLogger(logger);
  app.set('trust proxy', ['loopback', 'linklocal', 'uniquelocal', ...envData.trustedProxies]);
  app.set('etag', 'strong');
  app.use(cookieParser());
  app.use(json({ limit: '10mb' }));
  if (envData.environment === ImmichEnv.DEVELOPMENT) {
    app.enableCors();
  }
  app.useWebSocketAdapter(new WebSocketAdapter(app));
  useSwagger(app);

  app.setGlobalPrefix('api', { exclude: excludePaths });
  if (existsSync(resourcePaths.web.root)) {
    // copied from https://github.com/sveltejs/kit/blob/679b5989fe62e3964b9a73b712d7b41831aa1f07/packages/adapter-node/src/handler.js#L46
    // provides serving of precompressed assets and caching of immutable assets
    app.use(
      sirv(resourcePaths.web.root, {
        etag: true,
        gzip: true,
        brotli: true,
        extensions: [],
        setHeaders: (res, pathname) => {
          if (pathname.startsWith(`/_app/immutable`) && res.statusCode === 200) {
            res.setHeader('cache-control', 'public,max-age=31536000,immutable');
          }
        },
      }),
    );
  }
  app.use(app.get(ApiService).ssr(excludePaths));

  const { host } = envData;
  const server = await (host ? app.listen(port, host) : app.listen(port));
  server.requestTimeout = 30 * 60 * 1000;

  logger.log(
    `Immich Server is listening on ${await app.getUrl()} [v${serverVersion}] [${envData.environment.toUpperCase()}] `,
  );
}

bootstrap().catch((error) => {
  if (!isStartUpError(error)) {
    console.error(error);
  }
  // eslint-disable-next-line unicorn/no-process-exit
  process.exit(1);
});

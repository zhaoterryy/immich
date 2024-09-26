import { plainToInstance, Transform, Type } from 'class-transformer';
import {
  buildMessage,
  IsBoolean,
  IsEnum,
  IsInt,
  IsIpVersion,
  IsOptional,
  IsString,
  ValidateBy,
  ValidateNested,
  validateSync,
  ValidationOptions,
} from 'class-validator';
import { LogLevel } from 'src/enum';
import { Optional } from 'src/validation';
import { isIPRange } from 'validator';

export enum ImmichEnv {
  DEVELOPMENT = 'development',
  TESTING = 'testing',
  PRODUCTION = 'production',
}

enum VectorExtension {
  PG_VECTOR = 'pgvector',
  PG_VECTORS = 'pgvecto.rs',
}

function IsIPRange(version?: IsIpVersion, validationOptions?: ValidationOptions): PropertyDecorator {
  return ValidateBy(
    {
      name: 'isIpRange',
      constraints: [version],
      validator: {
        validate: (value, args): boolean => isIPRange(value, args?.constraints[0]),
        defaultMessage: buildMessage((eachPrefix) => eachPrefix + '$property must be an ip address', validationOptions),
      },
    },
    validationOptions,
  );
}

class BuildMetadata {
  @IsString()
  build!: string;

  @IsString()
  buildUrl!: string;

  @IsString()
  buildImage!: string;

  @IsString()
  buildImageUrl!: string;

  @IsString()
  repository!: string;

  @IsString()
  repositoryUrl!: string;

  @IsString()
  sourceRef!: string;

  @IsString()
  sourceCommit!: string;

  @IsString()
  sourceUrl!: string;
}

class Database {
  @IsString()
  @IsOptional()
  url?: string;

  @IsString()
  username!: string;

  @IsString()
  password!: string;

  @IsString()
  hostname!: string;

  @IsInt()
  @Type(() => Number)
  port!: number;

  @IsString()
  name!: string;

  @IsEnum(VectorExtension)
  vectorExtension!: VectorExtension;

  @IsBoolean()
  @Type(() => Boolean)
  skipMigrations!: boolean;
}

class MachineLearning {
  @IsBoolean()
  enabled!: boolean;

  @IsString()
  url!: string;
}

class Metrics {
  @IsInt()
  @Type(() => Number)
  apiPort!: number;

  @IsInt()
  @Type(() => Number)
  microservicesPort!: number;

  @IsBoolean()
  @Type(() => Boolean)
  enabled!: boolean;

  @IsBoolean()
  @Type(() => Boolean)
  hostEnabled!: boolean;

  @IsBoolean()
  @Type(() => Boolean)
  apiEnabled!: boolean;

  @IsBoolean()
  @Type(() => Boolean)
  ioEnabled!: boolean;

  @IsBoolean()
  @Type(() => Boolean)
  repoEnabled!: boolean;

  @IsBoolean()
  @Type(() => Boolean)
  jobEnabled!: boolean;
}

class Redis {
  @IsString()
  @Optional()
  url?: string;

  @IsString()
  hostname = 'redis';

  @IsInt()
  @Type(() => Number)
  port = 6379;

  dbIndex = 0;

  username?: string;
  password?: string;
  socket?: string;
}

export class EnvData {
  @IsString()
  @Optional()
  configFile?: string;

  @IsEnum(ImmichEnv)
  environment!: ImmichEnv;

  @IsEnum(LogLevel)
  @Optional()
  logLevel?: LogLevel;

  @IsString()
  mediaLocation!: string;

  @IsString()
  buildFolder!: string;

  @IsString()
  @Optional()
  host?: string;

  @IsInt()
  @Type(() => Number)
  port!: number;

  @IsBoolean()
  @Type(() => Boolean)
  processInvalidImages!: boolean;

  @IsIPRange(undefined, { each: true })
  @Transform(({ value }) => (typeof value === 'string' ? value.split(',') : value))
  @Optional()
  trustedProxies!: string[];

  @IsString()
  @Optional()
  nodeVersion?: string;

  @IsBoolean()
  @Optional()
  noColor?: boolean;

  @ValidateNested()
  @Type(() => BuildMetadata)
  buildMetadata!: BuildMetadata;

  @ValidateNested()
  @Type(() => Database)
  database!: Database;

  @ValidateNested()
  @Type(() => MachineLearning)
  machineLearning!: MachineLearning;

  @ValidateNested()
  @Type(() => Metrics)
  metrics!: Metrics;

  @ValidateNested()
  @Type(() => Redis)
  redis!: Redis;
}

const env = plainToInstance(EnvData, {
  host: process.env.HOST,
  port: process.env.IMMICH_PORT || 3001,

  environment: process.env.IMMICH_ENV || ImmichEnv.PRODUCTION,
  configFile: process.env.IMMICH_CONFIG_FILE,
  logLevel: process.env.IMMICH_LOG_LEVEL,
  mediaLocation: process.env.IMMICH_MEDIA_LOCATION || './upload',
  trustedProxies: process.env.IMMICH_TRUSTED_PROXIES || [],
  buildFolder: process.env.IMMICH_BUILD_DATA || '/build',

  // TODO move to system config
  processInvalidImages: process.env.IMMICH_PROCESS_INVALID_IMAGES ?? false,

  nodeVersion: process.env.NODE_VERSION,
  noColor: !!process.env.NO_COLOR,

  database: {
    url: process.env.DB_URL,
    username: process.env.DB_USERNAME || 'postgres',
    password: process.env.DB_PASSWORD || 'postgres',
    hostname: process.env.DB_HOSTNAME || 'immich',
    name: process.env.DB_DATABASE_NAME || 'immich',
    port: process.env.DB_PORT || 5432,
    vectorExtension: process.env.DB_VECTOR_EXTENSION || VectorExtension.PG_VECTORS,
    skipMigrations: process.env.DB_SKIP_MIGRATIONS ?? false,
  },

  machineLearning: {
    enabled: process.env.IMMICH_MACHINE_LEARNING_ENABLED ?? true,
    url: process.env.IMMICH_MACHINE_LEARNING_URL || 'http://immich-machine-learning:3003',
  },

  metadata: {
    build: process.env.IMMICH_BUILD,
    buildUrl: process.env.IMMICH_BUILD_URL,
    buildImage: process.env.IMMICH_BUILD_IMAGE,
    buildImageUrl: process.env.IMMICH_BUILD_IMAGE_URL,
    repository: process.env.IMMICH_REPOSITORY,
    repositoryUrl: process.env.IMMICH_REPOSITORY_URL,
    sourceRef: process.env.IMMICH_SOURCE_REF,
    sourceCommit: process.env.IMMICH_SOURCE_COMMIT,
    sourceUrl: process.env.IMMICH_SOURCE_URL,
  },

  metrics: {
    enabled: process.env.IMMICH_METRICS === 'true',
    apiPort: process.env.IMMICH_METRICS_API_PORT || 8081,
    microservicesPort: process.env.IMMICH_METRICS_MICROSERVICES_PORT || 8082,
    hostEnabled: process.env.IMMICH_HOST_METRICS === 'true',
    apiEnabled: process.env.IMMICH_HOST_METRICS === 'true',
    ioEnabled: process.env.IMMICH_IO_METRICS === 'true',
    repoEnabled: process.env.IMMICH_REPO_METRICS === 'true',
    jobEnabled: process.env.IMMICH_JOB_METRICS === 'true',
  },

  redis: {
    url: process.env.REDIS_URL,
    hostname: process.env.REDIS_HOSTNAME || 'redis',
    port: process.env.REDIS_PORT || 6379,
    dbIndex: process.env.REDIS_DBINDEX || 0,
    username: process.env.REDIS_USERNAME || undefined,
    password: process.env.REDIS_PASSWORD || undefined,
    socket: process.env.REDIS_SOCKET || undefined,
  },
});
const errors = validateSync(env, {});
if (errors.length > 0) {
  console.error(errors);
  throw new Error('Invalid environment variables');
}

export const envData = env;

import { Injectable } from '@nestjs/common';
import { join } from 'node:path';
import { OnEvent } from 'src/decorators';
import { SystemMetadataKey } from 'src/enum';
import { DatabaseLock } from 'src/interfaces/database.interface';
import { IDeleteFilesJob, JobStatus } from 'src/interfaces/job.interface';
import { BaseService } from 'src/services/base.service';

export class ImmichStartupError extends Error {}
export const isStartUpError = (error: unknown): error is ImmichStartupError => error instanceof ImmichStartupError;

type MountPaths = { folderPath: string; internalPath: string; externalPath: string };

const docsMessage = `Please see https://immich.app/docs/administration/system-integrity#folder-checks for more information.`;

@Injectable()
export class StorageService extends BaseService {
  @OnEvent({ name: 'app.bootstrap' })
  async onBootstrap() {
    const envData = this.configRepository.getEnv();
    const { mediaPaths } = this.configRepository.getEnv();
    const folders = [
      mediaPaths.encodedVideos,
      mediaPaths.library,
      mediaPaths.profile,
      mediaPaths.thumbnails,
      mediaPaths.uploads,
    ];

    await this.databaseRepository.withLock(DatabaseLock.SystemFileMounts, async () => {
      const flags = (await this.systemMetadataRepository.get(SystemMetadataKey.SYSTEM_FLAGS)) || { mountFiles: false };
      const enabled = flags.mountFiles ?? false;

      this.logger.log(`Verifying system mount folder checks (enabled=${enabled})`);

      try {
        // check each folder exists and is writable
        for (const folder of folders) {
          const internalPath = join(folder, '.immich');
          const externalPath = `<UPLOAD_LOCATION>/${folder.split('/').pop()}/.immich`;
          const paths = { internalPath, externalPath, folderPath: folder };

          if (!enabled) {
            this.logger.log(`Writing initial mount file for the ${folder} folder`);
            await this.createMountFile(paths);
          }

          await this.verifyReadAccess(paths);
          await this.verifyWriteAccess(paths);
        }

        if (!flags.mountFiles) {
          flags.mountFiles = true;
          await this.systemMetadataRepository.set(SystemMetadataKey.SYSTEM_FLAGS, flags);
          this.logger.log('Successfully enabled system mount folders checks');
        }

        this.logger.log('Successfully verified system mount folder checks');
      } catch (error) {
        if (envData.storage.ignoreMountCheckErrors) {
          this.logger.error(error);
          this.logger.warn('Ignoring mount folder errors');
        } else {
          throw error;
        }
      }
    });
  }

  async handleDeleteFiles(job: IDeleteFilesJob) {
    const { files } = job;

    // TODO: one job per file
    for (const file of files) {
      if (!file) {
        continue;
      }

      try {
        await this.storageRepository.unlink(file);
      } catch (error: any) {
        this.logger.warn('Unable to remove file from disk', error);
      }
    }

    return JobStatus.SUCCESS;
  }

  private async verifyReadAccess({ internalPath, externalPath }: MountPaths) {
    try {
      await this.storageRepository.readFile(internalPath);
    } catch (error) {
      this.logger.error(`Failed to read ${internalPath}: ${error}`);
      throw new ImmichStartupError(`Failed to read "${externalPath} - ${docsMessage}"`);
    }
  }

  private async createMountFile({ folderPath, internalPath, externalPath }: MountPaths) {
    try {
      this.storageRepository.mkdirSync(folderPath);
      await this.storageRepository.createFile(internalPath, Buffer.from(`${Date.now()}`));
    } catch (error) {
      if ((error as NodeJS.ErrnoException).code === 'EEXIST') {
        this.logger.warn('Found existing mount file, skipping creation');
        return;
      }
      this.logger.error(`Failed to create ${internalPath}: ${error}`);
      throw new ImmichStartupError(`Failed to create "${externalPath} - ${docsMessage}"`);
    }
  }

  private async verifyWriteAccess({ internalPath, externalPath }: MountPaths) {
    try {
      await this.storageRepository.overwriteFile(internalPath, Buffer.from(`${Date.now()}`));
    } catch (error) {
      this.logger.error(`Failed to write ${internalPath}: ${error}`);
      throw new ImmichStartupError(`Failed to write "${externalPath} - ${docsMessage}"`);
    }
  }
}

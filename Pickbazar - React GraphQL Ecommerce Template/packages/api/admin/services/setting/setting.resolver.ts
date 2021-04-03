import { Resolver, Query, Arg, ID, Mutation } from 'type-graphql';
import SettingInput from './setting.input.type';
import Setting from './setting.type';
import savedFile from '../category/file.type';
import {GraphQLUpload}  from 'graphql-upload';
import fs, {unlinkSync, createWriteStream} from 'fs';

@Resolver()
export default class SettingResolver {
    @Mutation(() => Setting, { description: 'Change Site settings' })
    async updateSettings(@Arg('setting') setting: SettingInput):Promise<Setting>{
        console.log(setting,'setting');
        return await setting;
    }

    @Mutation(returns => savedFile)
    async logoImageUpload(@Arg('file', type => GraphQLUpload)  file:any) {
        console.log('Logo image file uplading......');
        const response = await processUpload(file);
        return response;
    }
}
/**************** Upload process.... ***********************/

const storeUpload = async ({ stream, filename, mimetype }:any) => {
    //[1].make unipue file name  
    var dir = `../admin/src/assets/image/logo/logo.png`;
    // Rename the file 
    await new Promise((resolve, reject) =>
      stream
          .on('error', (error:any) => {
              if (stream.truncated)
                  unlinkSync(dir);
              reject(error);
          })
          .pipe(createWriteStream(dir))
          .on('error', (error:any) => reject(error))
          .on('finish', () => resolve({ dir }))
    );
    return filename;
  };
  
  const processUpload = async (upload:any) => {
    const { createReadStream, filename, mimetype } = await upload;
    const stream = createReadStream();
    const savename = await storeUpload({ stream, filename, mimetype });
    var file = new savedFile();
    file.filename = savename;
    file.mimetype = mimetype;
    return file;
  };
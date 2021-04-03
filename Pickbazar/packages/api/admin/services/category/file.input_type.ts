import { Stream } from 'stream';
import { createReadStream, ReadStream } from 'fs';
import { Field, InputType, Int } from 'type-graphql';

@InputType()
export default class Upload {
  @Field() 
  stream: Stream;

  @Field() filename: string;

  @Field() mimetype: string;

  // @Field() path: string;
}

// declare module "apollo-upload-server" {
//   import { GraphQLScalarType } from "graphql";
//   import { RequestHandler } from "express";
//   import { Readable } from "stream";

//   export default interface UploadMiddlewareOptions {
//     maxFieldSize?: number;
//     maxFileSize?: number;
//     maxFiles?: number;
//   }

  // export default interface Upload {
  //   stream: Readable;
  //   name: string;
  //   type: string;
  //   encoding: string;
  // }

//   export const GraphQLUpload: GraphQLScalarType;
//   export function apolloUploadExpress(
//     options?: UploadMiddlewareOptions,
//   ): RequestHandler;
// }
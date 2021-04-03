import { Field, ObjectType } from 'type-graphql';

@ObjectType()
export default class savedFile {

  @Field() filename: string;

  @Field() mimetype: string;

  // @Field() path: string;
}
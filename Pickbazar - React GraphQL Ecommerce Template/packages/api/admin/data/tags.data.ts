import { plainToClass } from 'class-transformer';
import connectDB from '../../db';
import { Field, ObjectType } from 'type-graphql';

@ObjectType()
export default class Tag {
  @Field()
  id: string;

  @Field()
  name: string;

  @Field()
  icon: string;

  @Field()
  slug: string;
 
//   @Field()
//   creation_date: Date;

}

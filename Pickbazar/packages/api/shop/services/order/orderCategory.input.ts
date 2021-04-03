import { Field, InputType, Int } from 'type-graphql';
import Category from '../category/category.type';

@InputType()
export default class CategoryInput implements Partial<Category> {
  @Field(type => Int)
  id: number;

  @Field()
  title: string;

  @Field(type => [CategoryInput], { nullable: true })
  children?: CategoryInput[];

  @Field(type => String)
  type: string;

  @Field(type => String, { nullable: true })
  icon?: string;

  @Field(type => String)
  slug: string;

  @Field(type => Int, { nullable: true })
  itemCount: number;
}
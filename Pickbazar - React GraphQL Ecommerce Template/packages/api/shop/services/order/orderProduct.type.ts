import { ObjectType, Field } from 'type-graphql';
import { ProductType } from '../product/product.enum';
import Category from '../category/category.type';

@ObjectType()
export default class OrderProduct {
  @Field()
  id: number;

  @Field()
  title: string;

  @Field()
  image: string;

  @Field()
  price: number;

  @Field()
  unit: string;

  @Field()
  quantity: number;

  @Field(type => String)
  type: string;
}

import { Field, InputType } from 'type-graphql';
import { ProductType } from '../product/product.enum';
import CategoryInput from './orderCategory.input';
import OrderProduct from './orderProduct.type';

@InputType()
export default class OrderProductInput implements Partial<OrderProduct> {
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

  // @Field()
  // subtotal: number;

  @Field(type => String)
  type: string;
}

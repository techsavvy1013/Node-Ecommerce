import { InputType, Field, ID, Float } from 'type-graphql';
import OrderProductInput from './orderProduct.input';
import Order from './order.type';

@InputType()
export default class OrderInput implements Partial<Order> {
  @Field(type => ID)
  id: number;

  @Field()
  customer_id: number;
  
  @Field()
  card_id: string;

  @Field()
  deliveryAddress: string;

  @Field()
  deliveryContact: string;

  @Field(type => String)
  deliveryTime: string;
 
  @Field()
  deliveryFee: string;

  @Field()
  total: string;

  @Field()
  discount: string;
  
  @Field()
  subtotal: string;

  @Field({nullable:true})
  coupon: string;

  @Field({nullable:true})
  payment_id: string;

  @Field({nullable:true})
  quantity: number;
  
  @Field(type => [OrderProductInput], { nullable: true })
  products: OrderProductInput[];

  @Field()
  status: number;

  @Field(type => String)
  date: string;
}

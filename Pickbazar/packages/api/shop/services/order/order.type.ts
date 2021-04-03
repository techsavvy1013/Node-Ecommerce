import { ObjectType, Field ,Float} from 'type-graphql';
import OrderProduct from './orderProduct.type';
// import { OrderStatusEnum } from './orderStatusEnum';

@ObjectType()
export default class Order {
  @Field()
  id: number;
  
  @Field()
  customer_id: number;

  @Field()
  card_id: string;

  @Field(type => String)
  deliveryAddress: string;

  @Field({nullable:true})
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

  @Field(type => [OrderProduct])
  products: OrderProduct[];

  @Field()
  status: number;

  @Field(type => String)
  date: string;
}

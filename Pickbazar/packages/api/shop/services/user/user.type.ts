import { ObjectType, Field, Int } from 'type-graphql';
import Address from './address.type';
import Contact from './contact.type';
import Card from './card.type';
import PaginatedResponse from '../../helpers/paginated-response';

@ObjectType()
export default class User {
  @Field(type => Int)
  id: number;

  @Field()
  name: string;

  @Field()
  email: string;

  @Field({nullable:true})
  password: string;

  @Field({nullable:true})
  token: string;

  @Field(type => [Address], {nullable:true})
  address: Address[];

  @Field(type => [Contact], {nullable:true})
  contact: Contact[];

  @Field(type => [Card], {nullable:true})
  card: Card[];
}

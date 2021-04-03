import { Field, ID, ObjectType } from 'type-graphql';
import Contact from './contact/contact.type';
import Address from './address/address.type';
import Card from './card/card.type';

@ObjectType()
export default class User {
  @Field(type => ID)
  id: string;

  @Field({nullable:true})
  name: string;

  @Field({nullable:true})
  image: string;

  @Field()
  email: string;

  @Field(type => [Address])
  addresses: Address[];

  @Field(type => [Contact])
  contacts: Contact[];

  @Field(type => [Card])
  card: Card[];

  @Field({nullable:true})
  password: string;

  @Field()
  creation_date: Date;
}

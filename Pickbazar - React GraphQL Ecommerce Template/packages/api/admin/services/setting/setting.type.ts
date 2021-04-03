import { Field, ObjectType, ID } from 'type-graphql';

@ObjectType()
export default class Setting 
{
    @Field((type) => ID)
    id: string;

    @Field()
    file_name: string;

    @Field()
    site_name: string;
  
    @Field()
    site_description: string;
  
    @Field()
    site_state: string;
}
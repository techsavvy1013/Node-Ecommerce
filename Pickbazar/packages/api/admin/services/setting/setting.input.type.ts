import { Field, InputType, ID } from 'type-graphql';

@InputType()
export default class SettingInput 
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
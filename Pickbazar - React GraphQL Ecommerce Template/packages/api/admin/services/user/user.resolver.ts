import { Resolver, Query, Arg, ID, Mutation } from 'type-graphql';
import User from './user.type';
import connectDB from '../../../db';
@Resolver()
export default class UserResolver 
{
    // private readonly admins:User[] = loadAdmin();
    // @Mutation(() => User, { description: 'Login dashboard' })
    // async createOrUpdateCustomer(@Arg('admin') admin: string): Promise<User> {
    //     console.log(admin,'user');
    //     return await this.admins[0];
    // }
}

const loadAdmin = () => {

}

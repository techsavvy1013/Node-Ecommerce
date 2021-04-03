import { Resolver, Query, Arg, Int, Mutation } from 'type-graphql';

const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
import { AuthenticationError, UserInputError } from 'apollo-server-express';
import { filterItems } from '../../helpers/filter';
import User from './user.type';
import loadUsers from './user.sample';
import connectDB from '../../../db';
//import {sendEmail} from './emailer';
import {BASE_URL} from '../../../base_url';
import { v4 as uuidv4 } from 'uuid';
import { split } from 'lodash';
import Address from './address.type';
import Contact from "./contact.type";
import Card from "./card.type";

@Resolver()
export class UserResolver {
  private readonly items: User[] = loadUsers();
  private my_id:string;
  @Query(() => User)
  async me(@Arg('id') id: string): Promise<User | undefined> {
    // as auth user. check from middleware.
    this.my_id = id;
    return await this.items.find((item) => item.id === Number(id));
  }

  @Mutation(() => User, { description: 'Update User' })
  async updateMe(@Arg('meInput') meInput: string): Promise<User> {
    console.log(meInput, 'meInput');
    var json = JSON.parse(meInput);
    //console.log(json.name, json.email);
    var db = connectDB();
    db.query(`UPDATE users SET name = '${json.name}', email = '${json.email}' WHERE id = '${this.my_id}'`);
    db.dispose();
    
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Add or Edit Address' })
  async updateAddress(
    @Arg('addressInput') addressInput: string
  ): Promise<User> {
    console.log(addressInput, 'addressinput');
    var  json = JSON.parse(addressInput);
    var db = connectDB();
    //[2]. Insert new Address.
    if(json.id == null)
    {
      //[1]. Get any result.
      var res = db.query(`SELECT * FROM address WHERE user_id =${this.my_id}`);
      var t = db.query(`INSERT INTO address (user_id,address,title) VALUE('${this.my_id}','${json.info}','${json.name}')`);
      if(res.length == 0)
      {
        //[2.1] This is primary address. because firstly registered.
        db.query(`UPDATE user_profile SET primary_address = ${t.insertId} WHERE user_id = ${this.my_id}`);
      }
    }else
    {
      db.query(`UPDATE address SET title = '${json.name}', address = '${json.info}' WHERE id = '${json.id}'`);
    }
    db.dispose();
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Add or Edit Contact' })
  async updateContact(
    @Arg('contactInput') contactInput: string
  ): Promise<User> {
    console.log(contactInput, 'contactinput');
    var  json = JSON.parse(contactInput);
    var db = connectDB();
    //[2]. Insert new Address.
    if(json.id == null)
    {
      //[1]. Get any result.
      var res = db.query(`SELECT * FROM contact WHERE user_id =${this.my_id}`);
      var t = db.query(`INSERT INTO contact (user_id,contact_number) VALUE('${this.my_id}','${json.number}')`);
      if(res.length == 0)
      {
        //[2.1] This is primary address. because firstly registered.
        db.query(`UPDATE user_profile SET primary_contact = ${t.insertId} WHERE user_id = ${this.my_id}`);
      }
    }else
    {
      db.query(`UPDATE contact SET contact_number = '${json.name}' WHERE id = '${json.id}'`);
    }
    db.dispose();
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Delete Address' })
  async deleteAddress(@Arg('addressId') addressId: string): Promise<User> {
    console.log(addressId, 'address_id');
    var db = connectDB();
    var res = db.query(`SELECT * FROM user_profile WHERE user_id = ${this.my_id}`);
    if(res[0].primary_address == addressId)
      db.query(`Update user_profile SET primary_address = NULL WHERE user_id = ${this.my_id}`);
    db.query(`DELETE FROM address WHERE id = ${addressId}`);
    db.dispose();
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Delete Contact' })
  async deleteContact(@Arg('contactId') contactId: string): Promise<User> {
    console.log(contactId, 'contact_id');
    var db = connectDB();
    var res = db.query(`SELECT * FROM user_profile WHERE user_id = ${this.my_id}`);
    if(res[0].primary_contact == contactId)
      db.query(`Update user_profile SET primary_contact = NULL WHERE user_id = ${this.my_id}`);
    db.query(`DELETE FROM contact WHERE id = ${contactId}`);
    db.dispose();
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Add Payment Card' })
  async addPaymentCard(@Arg('cardInput') cardInput: string): Promise<User> {
    console.log(cardInput, 'cardInput');
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Delete Payment Card' })
  async deletePaymentCard(@Arg('cardId') cardId: string): Promise<User> {
    console.log(cardId, 'card_id');
    return await this.items[0];
  }

  @Mutation(() => User, { description: 'Register new User.' })
  async signup(@Arg('email') email:string, @Arg('password') password:string ) {
    console.log('data',email,password);
    var tmp = this.items.find((item) => item.email === email);
    var db = connectDB();
    var id = uuidv4();
    if(!tmp) // If there is no exist data.
    {
      var res = db.query(`INSERT INTO users (email,password) VALUE('${email}',MD5('${password}'))`);
      db.dispose();
      return res.insertId;
    }
    else
    {
      db.dispose();
      return tmp.token;
    }
  }

  @Mutation(() => User, { description: 'Login.' })
  login(@Arg('email') email:string, @Arg('password') password:string ) {
    
    var jwt = require('jsonwebtoken');
    //console.log('data',email,password);
    var tmp = this.items.find((item) => item.email === email);
    //console.log(tmp,'result');
    var md5 = require('md5');
    var pswd = md5(password);
    //console.log(pswd,'r_pswd');
    if(tmp)
    {
      console.log(tmp.password,'o_pswd');
      if(tmp.password === pswd){
        var token = jwt.sign({username:`${email}`}, 'supersecret',{expiresIn: 120});
        tmp.token = token;
        return tmp;
      }else
      {
        tmp.token = "wrong password";
        return tmp;
      }
    }
    var user = new User();
    user.token = "error";
    return user;
  }

}

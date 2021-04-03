import 'reflect-metadata';
import express from 'express';
import { ApolloServer } from 'apollo-server-express';
import { buildSchema } from 'type-graphql';
import ProductResolver from './admin/services/product/product.resolver';
import CategoryResolver from './admin/services/category/category.resolver';
import CustomerResolver from './admin/services/customer/customer.resolver';
import CouponResolver from './admin/services/coupon/coupon.resolver';
import OrderResolver from './admin/services/order/order.resolver';
import StaffResolver from './admin/services/staff/staff.resolver';
import SettingResolver from './admin/services/setting/setting.resolver';
import UserResolver from './admin/services/user/user.resolver';
import fs, {readFileSync,existsSync } from 'fs';
import {split,replace} from 'lodash';
import connectDB from './db';
const app: express.Application = express();
const path = '/admin/graphql';
const PORT = process.env.PORT || 4001;

const main = async () => {
  const schema = await buildSchema({
    resolvers: [
      ProductResolver,
      CategoryResolver,
      CustomerResolver,
      OrderResolver,
      CouponResolver,
      StaffResolver,
      SettingResolver,
      UserResolver
    ],
    validate: false,
  });

  const apolloServer = new ApolloServer({
    schema,
    introspection: true,
    playground: true,
    tracing: true,
  });

  app.use('/products', express.static('data/products'));
  app.use('/avatars', express.static('data/avatars'));
  apolloServer.applyMiddleware({ app, path });

  app.listen(PORT, () => {
    console.log(`🚀 started http://localhost:${PORT}${path}`);
  });

  app.get("/admin_productimage",function(req,res){
    //console.log(req.query.folder, req.query.filename);
    var folder = req.query.folder;
    var data = readFileContent(`${folder}`,`${req.query.filename}`)
    res.end(data);
  })

  app.get("/avatarImage", function(req,res){
    var db = connectDB();
    var email = req.query.loginedId;
    if(email)
    {
      let tmp = db.query(`SELECT * FROM users WHERE email = '${email}'`);
      if(tmp[0].avatar === null){
        res.end(readFileSync(`./data/avatars/man.png`));
      }
      else
      {
        res.end(readFileSync(`./data/avatars/${tmp[0].avatar}`));
      }
    }
    else
    {
      res.end(readFileSync(`./data/avatars/man.png`));
    }
    db.dispose();
  });

};

main();

const readFileContent = (parent_folder:any, filepath:any) => {

  var path = `../admin/src/assets/image/products/${parent_folder.replace('-',' ')}/${filepath.replace('-',' ')}`;
  //console.log(path);
  var data;
  if(existsSync(path)){
    data = readFileSync(path); 
  }else{
    data = readFileSync(`../admin/src/assets/image/products/product-placeholder.png`);
  }
  return data;

}
import 'reflect-metadata';
import express from 'express';
import { ApolloServer } from 'apollo-server-express';
import { buildSchema } from 'type-graphql';
import { UserResolver } from './shop/services/user/user.resolver';
import { ProductResolver } from './shop/services/product/product.resolver';
import { PaymentResolver } from './shop/services/payment/payment.resolver';
import { OrderResolver } from './shop/services/order/order.resolver';
import { CouponResolver } from './shop/services/coupon/coupon.resolver';
import { CategoryResolver } from './shop/services/category/category.resolver';
import { VendorResolver } from './shop/services/vendors/vendors.resolver';
import fs, {existsSync, readFileSync } from 'fs';
import connectDB from './db';
const app: express.Application = express();
const path = '/shop/graphql';
const PORT = process.env.PORT || 4000;
const main = async () => {
  const schema = await buildSchema({
    resolvers: [
      UserResolver,
      ProductResolver,
      PaymentResolver,
      OrderResolver,
      CouponResolver,
      CategoryResolver,
      VendorResolver,
    ],
  });
  const apolloServer = new ApolloServer({
    schema,
    introspection: true,
    playground: true,
    tracing: true,
  });

  app.use('/products', express.static('data/products'));
  app.use('/coupons', express.static('data/coupons'));

  apolloServer.applyMiddleware({ app, path });

  app.listen(PORT, () => {
    console.log(`🚀 started http://localhost:${PORT}${path}`);
  });

  app.get("/shop_productimage",function(req,res){
    var data = readFileContent(`products`,req.query.filename, req.query.gallery)
    res.end(data);
  })

  app.get("/shop_giftcardimage",function(req,res){
    var data = readFileContent(`GiftCards`,req.query.filename);
    res.end(data);
  })

  app.get("/confirm",function(req,res){
    console.log(req.query.id, 'id');
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

const readFileContent = (parent_folder:any, filepath:any, gallery:any = undefined) => {
  var path;
  if(gallery === undefined)
    path = `../admin/src/assets/image/${parent_folder}/${filepath}`;
  else
    path = `../admin/src/assets/image/${parent_folder}/${gallery}/${filepath}`;
  var data;

  if(existsSync(path)){
    data = readFileSync(path); 
  }else{
    data = readFileSync(`../admin/src/assets/image/products/product-placeholder.png`);
  }
  return data;

}


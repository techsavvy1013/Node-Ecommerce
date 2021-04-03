import Coupon from './coupon.type';
import { plainToClass } from 'class-transformer';
import connectDB from '../../../db';
import {SHOP_COUPON_IMAGE_URL} from '../../../base_url';
import fs from 'fs';
const loadCoupons = (): Coupon[] => {
  var db = connectDB();
  var res = db.query(`SELECT * FROM coupons`);
  var temp:Coupon[] = [];
  for(var i = 0; i < res.length; i++){
    var coupon = new Coupon();
    coupon.id = res[i].id;
    coupon.image = `${SHOP_COUPON_IMAGE_URL}/${res[i].image}.png`;
    coupon.code = res[i].code;
    coupon.discountInPercent = res[i].discount_percent;
    temp.push(coupon);
  }
  return temp;
}
  // var temp = [
  //   {
  //     id: 1,
  //     title: 'Free Delivery',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     code: 'RAMADAN15',
  //     discountInPercent: 15,
  //     number_of_coupon: 20,
  //     number_of_used_coupon: 10,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 2,
  //     title: 'Free Delivery',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-2.png',
  //     code: 'RAMADAN20',
  //     discountInPercent: 20,
  //     number_of_coupon: 20,
  //     number_of_used_coupon: 10,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'revoked',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 3,
  //     title: 'cyber Monday Sale',
  //     code: 'CYBERMONDAY10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 20,
  //     number_of_used_coupon: 10,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 4,
  //     title: 'Boxing Day Sale',
  //     code: 'DISCOUNT10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-2.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 5,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },

  //   {
  //     id: 5,
  //     title: 'Summer Discount',
  //     code: 'SUMMER10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-2.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 5,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 6,
  //     title: 'Winter Discount',
  //     code: 'WINTER10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 15,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 7,
  //     title: 'Autumn Discount',
  //     code: '1AUTUMN10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-2.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 15,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },

  //   {
  //     id: 8,
  //     title: 'Winter Discount',
  //     code: 'WINTER10',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     discountInPercent: 10,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 15,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },

  //   {
  //     id: 9,
  //     title: 'Winter Sale',
  //     code: 'WINTER15',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     discountInPercent: 15,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 15,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  //   {
  //     id: 10,
  //     title: 'Halloween Sale',
  //     code: 'HALLOWEEN20',
  //     image: 'http://s3.amazonaws.com/redqteam.com/pickbazar/gift-card-1.png',
  //     discountInPercent: 20,
  //     number_of_coupon: 10,
  //     number_of_used_coupon: 15,
  //     products: [
  //       {
  //         id: '1',
  //         url: '',
  //       },
  //     ],
  //     status: 'active',
  //     expiration_date: new Date(),
  //     creation_date: new Date(),
  //   },
  // ];

//   var db = connectDB();

//   for(var i = 0; i < temp.length; i++)
//   {
//     var image = temp[i].title.replace(' ', '_');
//     uploadFile(temp[i].image,image);
    
//     db.query(`INSERT INTO coupons 
//     ( id, 
//       code, 
//       title, 
//       image, 
//       status, 
//       number, 
//       used_number,
//       discount_percent, 
//       start_date, 
//       end_date,
//       inserted_at,
//       updated_at)
//     VALUES(
//       "${temp[i].id}", 
//       "${temp[i].code}", 
//       "${temp[i].title}", 
//       "${image}", 
//       "1", 
//       "${temp[i].number_of_coupon}",
//       "${temp[i].number_of_used_coupon}", 
//       "${temp[i].discountInPercent}",
//       NOW(),
//       NOW(),
//       NOW(), 
//       NOW()
//     )`);
//   }

//  db.dispose();
// return plainToClass(Coupon, temp);
//}

// const uploadFile =async (url:any, savename:any) => {
//   var request = require('request');
//   await request(url).pipe(fs.createWriteStream(`../admin/src/assets/image/GiftCards/${savename}.png`));
// }
export default loadCoupons;

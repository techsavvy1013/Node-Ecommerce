import Coupon from "../services/coupon/coupon.type";
import { plainToClass } from "class-transformer";
import connectDB from '../../db';

const loadCoupons = (): Coupon[] => {
  var db = connectDB();
  var res = db.query(`SELECT * FROM coupons`);
  var temp:Coupon[] = [];
  for(var i = 0; i < res.length; i++)
  {
    var coupon = new Coupon();
    coupon.id = res[i].id;
    coupon.code = res[i].code;
    coupon.title = res[i].title;
    coupon.number_of_coupon = res[i].number;
    coupon.number_of_used_coupon = res[i].used_number;
    coupon.status = 'active';
    coupon.creation_date = new Date(res[i].start_date);
    coupon.expiration_date = new Date(res[i].end_date);
    coupon.discount_in_percent = res[i].discount_percent;
    temp.push(coupon);
  }
  return temp;
  return plainToClass(Coupon, [
    {
      id: 1,
      title: "Ramadan Sale",
      code: "RAMADAN15",
      discount_in_percent: 15,
      number_of_coupon: 20,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 2,
      title: "Ramadan Sale",
      code: "RAMADAN20",
      discount_in_percent: 20,
      number_of_coupon: 20,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "revoked",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 3,
      title: "Cyber Monday Sale",
      code: "CYBERMONDAY10",
      discount_in_percent: 10,
      number_of_coupon: 20,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 4,
      title: "Boxing Day Sale",
      code: "DISCOUNT10",
      discount_in_percent: 10,
      number_of_coupon: 10,
      number_of_used_coupon: 5,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },

    {
      id: 5,
      title: "Summer Discount",
      code: "SUMMER10",
      discount_in_percent: 10,
      number_of_coupon: 10,
      number_of_used_coupon: 5,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 6,
      title: "Winter Discount",
      code: "WINTER10",
      discount_in_percent: 10,
      number_of_coupon: 15,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 7,
      title: "Autumn Discount",
      code: "1AUTUMN10",
      discount_in_percent: 10,
      number_of_coupon: 15,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },

    {
      id: 8,
      title: "Winter Discount",
      code: "WINTER10",
      discount_in_percent: 10,
      number_of_coupon: 15,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "revoked",
      expiration_date: new Date(),
      creation_date: new Date()
    },

    {
      id: 9,
      title: "Winter Sale",
      code: "WINTER15",
      discount_in_percent: 15,
      number_of_coupon: 15,
      number_of_used_coupon: 10,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    },
    {
      id: 10,
      title: "Halloween Sale",
      code: "HALLOWEEN20",
      discount_in_percent: 20,
      number_of_coupon: 20,
      number_of_used_coupon: 15,
      products: [
        {
          id: "1",
          url: ""
        }
      ],
      status: "active",
      expiration_date: new Date(),
      creation_date: new Date()
    }
  ]);
};

export default loadCoupons;

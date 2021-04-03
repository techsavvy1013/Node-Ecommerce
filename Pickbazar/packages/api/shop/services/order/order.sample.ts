import { plainToClass } from 'class-transformer';
import Order from './order.type';
import connectDB from '../../../db';
import { split } from 'lodash';
import OrderProduct from './orderProduct.type';


const loadOrders = (user_id:any): Order[] => {
  var db = connectDB();
  var res = db.query(`SELECT * FROM get_orders WHERE customer_id = ${user_id}`);
  //console.log(res);
  var temp:Order[] = [];
  for(var i = 0; i < res.length; i++){
    var order = new Order();
    order.id = res[i].id;
    order.card_id = res[i].card;
    order.coupon = res[i].code;
    order.customer_id = res[i].customer_id;
    order.date = res[i].date;
    order.deliveryAddress = res[i].deliveryAddress;
    order.deliveryContact = res[i].deliveryContact;
    order.deliveryFee = res[i].deliveryFee;
    order.deliveryTime = res[i].deliveryTime;
    order.discount = res[i].discount;
    order.payment_id = res[i].payment_method;
    order.quantity = res[i].quantity;
    order.status = res[i].status;
    order.subtotal = res[i].subtotal;
    order.total = res[i].total;
    order.products = [];
    
    var p_ids = split(res[i].product_ids,'^^^');
    var p_titles = split(res[i].product_titles,'^^^');
    var p_images = split(res[i].product_images,'^^^');
    var p_prices = split(res[i].product_prices,'^^^');
    var p_units = split(res[i].product_units,'^^^');
    var p_quantities = split(res[i].product_quantities,'^^^');
    var p_types = split(res[i].product_types,'^^^');

    for(var j = 0; j < p_ids.length; j++){
      var product = new OrderProduct();
      product.id = Number(p_ids[j]);
      product.title = p_titles[j];
      product.image = `${p_images[j]}`;
      product.price = Number(p_prices[j]);
      product.unit = p_units[j];
      product.quantity = Number(p_quantities[j]);
      product.type = p_types[j];
      order.products.push(product);
      console.log(product);
    }

    temp.push(order);
  }
  //console.log(temp)
  return temp;

  return plainToClass(Order, [
    {
      id: 1,
      userId: 1,
      deliveryTime: '13th April',
      amount: 249.7,
      date: '7th April 2019',
      deliveryAddress: '1756  Roy Alley, GIRARDVILLE, Pennsylvania',
      subtotal: 200,
      discount: 0.0,
      deliveryFee: 49.7,
      products: [
        {
          id: 1,
          title: 'Banana',
          weight: '2lb',
          price: 50,
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/banana.jpg',
          quantity: 2,
          total: 100,
        },
        {
          id: 2,
          title: 'Onions',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/onions.jpg',
          weight: '2lb',
          price: 100,
          quantity: 1,
          total: 100,
        },
      ],
      status: 2,
    },
    {
      id: 2,
      userId: 1,
      amount: 339.0,
      deliveryTime: '17th April',
      date: '7th April 2019',
      deliveryAddress: '1756  Roy Alley, GIRARDVILLE, Pennsylvania',
      subtotal: 300.0,
      discount: 0.0,
      deliveryFee: 39.0,
      products: [
        {
          id: 1,
          title: 'Blue Grapes',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/blue_grapes.jpg',
          weight: '2lb',
          price: 150,
          quantity: 1,
          total: 150,
        },
        {
          id: 2,
          title: 'Coconut',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/cocnut.jpg',
          weight: '2lb',
          price: 150,
          quantity: 1,
          total: 150,
        },
      ],
      status: 1,
    },
    {
      id: 3,
      userId: 1,
      amount: 318.0,
      deliveryTime: '17th April',
      date: '12th April 2019',
      deliveryAddress: '1756  Roy Alley, GIRARDVILLE, Pennsylvania',
      subtotal: 279.0,
      discount: 0.0,
      deliveryFee: 39.0,
      products: [
        {
          id: 1,
          title: 'Garlic',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/garlic.jpg',
          weight: '2lb',
          price: 140,
          quantity: 1,
          total: 140,
        },
        {
          id: 2,
          title: 'Green Apple',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/Green_Apple.jpg',
          weight: '2lb',
          price: 139,
          quantity: 1,
          total: 139,
        },
      ],
      status: 3,
    },
    {
      id: 4,
      userId: 1,
      amount: 339.0,
      deliveryTime: '17th April',
      date: '17th April 2019',
      deliveryAddress: '1756  Roy Alley, GIRARDVILLE, Pennsylvania',
      subtotal: 300,
      discount: 0.0,
      deliveryFee: 39.0,
      products: [
        {
          id: 1,
          title: 'Guava',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/guava.jpg',
          weight: '2lb',
          price: 100,
          quantity: 3,
          total: 300,
        },
      ],
      status: 2,
    },
    {
      id: 5,
      userId: 1,
      amount: 326.0,
      deliveryTime: '17th April',
      date: '27th April 2019',
      deliveryAddress: '1756  Roy Alley, GIRARDVILLE, Pennsylvania',
      subtotal: 287.0,
      discount: 0.0,
      deliveryFee: 39.0,
      products: [
        {
          id: 1,
          title: 'Oranges',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/oranges.jpg',
          weight: '2lb',
          price: 100,
          quantity: 2,
          total: 200,
        },
        {
          id: 2,
          title: 'Pepper',
          image:
            'http://s3.amazonaws.com/redqteam.com/headless-image/pepper.jpg',
          weight: '2lb',
          price: 87,
          quantity: 1,
          total: 87,
        },
      ],
      status: 1,
    },
  ]);
};

export default loadOrders;

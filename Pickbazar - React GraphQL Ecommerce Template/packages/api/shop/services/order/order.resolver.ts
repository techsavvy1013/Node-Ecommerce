import { Resolver, Query, Arg, Int, Mutation } from 'type-graphql';
import loadOrders from './order.sample';
import OrderInput from './order.input';
import Order from './order.type';
import { filterOrder } from '../../helpers/filter';
import { take } from 'lodash';
import connectDB from '../../../db';

@Resolver()
export class OrderResolver {
  private readonly items: Order[] = loadOrders(1);
  private id:number;

  @Query(() => [Order], { description: 'Get all the Orders' })
  async orders(
    @Arg('user', type => Int) user: number,
    @Arg('text', type => String, { nullable: true }) text: string,
    @Arg('limit', type => Int, { defaultValue: 7 }) limit: number
  ): Promise<Order[]> {
    var items: Order[] = loadOrders(user);
    this.id = user;
    // return await take(this.items.filter(item => item.userId === user), limit);
    return await filterOrder(items, user, limit, text);
  }

  @Query(() => Order, { description: 'Get single order' })
  async order(@Arg('id', type => Int) id: number): Promise<Order | undefined> {
    var items: Order[] = loadOrders(this.id);
    return await items.find(item => item.id === id);
  }

  @Mutation(() => Order, { description: 'Add an Order' })
  async addOrder(@Arg('order') order: OrderInput) {
    console.log(order, 'Add an Order');
    var db = connectDB();
    var res = db.query(`INSERT INTO sales_orders
    (
      order_date,
      coupon_id,
      customer_id,
      card_id,
      payment_id,
      delivery_time,
      delivery_address,
      contact_number,
      quantity,
      total,
      discount,
      subtotal,
      delivery_fee,
      inserted_at,
      updated_at
    )
    VALUE(
      '${order.date}',
      '${order.coupon}',
      '${order.customer_id}',
      '${order.card_id}',
      '${order.payment_id}',
      '${order.deliveryTime}', 
      '${order.deliveryAddress}', 
      '${order.deliveryContact}', 
      '${order.quantity}', 
      '${order.total}',
      '${order.discount}',
      '${order.subtotal}',
      '${order.deliveryFee}', 
      NOW(), 
      NOW()
    )`
    );
    order.id = res.insertId;
    for(var i = 0; i < order.products.length; i++){
      var type = db.query(`SELECT id FROM tags WHERE slug = '${order.products[i].type.toLowerCase()}'`);
      db.query(`INSERT INTO order_products
      (
        product_id,
        order_id,
        name,
        image,
        price,
        quantity,
        unit,
        tag_id,
        inserted_at,
        updated_at
      )
      VALUE(
        '${order.products[i].id}',
        '${res.insertId}',
        '${order.products[i].title}',
        '${order.products[i].image}',
        '${order.products[i].price}',
        '${order.products[i].quantity}',
        '${order.products[i].unit}',
        '${type[0].id}',
        NOW(),
        NOW()
      )`
      );
    }

    db.query(`INSERT INTO cc_transactions 
    (
      coupon_id,
      order_id,
      delivery_time,
      delivery_address,
      delivery_contact,
      amount,
      fee,
      discount,
      sub_amount,
      status,
      inserted_at,
      updated_at
    )
    VALUE(
      '${order.coupon}',
      '${order.id}',
      '${order.deliveryTime}',
      '${order.deliveryAddress}',
      '${order.deliveryContact}',
      '${order.total}',
      '${order.deliveryFee}',
      '${order.discount}',
      '${order.subtotal}',
      '${order.status}',
      NOW(),
      NOW()
    )`);
    res = db.query(`SELECT * FROM get_orders WHERE id = ${order.id}`);
    order.payment_id = res[0].payment_method;
    order.deliveryAddress = res[0].deliveryAddress;
    db.dispose();
    //console.log(order);
    return await order;
  }
}

import React, { useState, useEffect } from 'react';
import { Scrollbar } from 'components/scrollbar/scrollbar';
import { useQuery, gql } from '@apollo/client';
import {
  DesktopView,
  MobileView,
  OrderBox,
  OrderListWrapper,
  OrderList,
  OrderDetailsWrapper,
  Title,
  ImageWrapper,
  ItemWrapper,
  ItemDetails,
  ItemName,
  ItemSize,
  ItemPrice,
  NoOrderFound,
} from './order.style';

import dayjs from 'dayjs';
import OrderDetails from './order-details/order-details';
import OrderCard from './order-card/order-card';
import OrderCardMobile from './order-card/order-card-mobile';
import useComponentSize from 'utils/useComponentSize';
import { FormattedMessage } from 'react-intl';

const progressData = ['Order Received', 'Order On The Way', 'Order Delivered'];

const GET_ORDERS = gql`
  query getAllOrders($text: String, $user: Int!, $limit: Int) {
    orders(text: $text, limit: $limit, user: $user) {
      id
      customer_id
      card_id
      deliveryAddress
      deliveryContact
      deliveryTime
      deliveryFee
      total
      discount
      subtotal
      coupon
      payment_id
      quantity
      products {
        id
        title
        image
        price
        unit
        quantity
        type
      }
      status
      date
    }
  }
`;

const orderTableColumns = [
  {
    title: <FormattedMessage id='cartItems' defaultMessage='Items' />,
    dataIndex: '',
    key: 'items',
    width: 250,
    ellipsis: true,
    render: (text, record) => {
      return (
        <ItemWrapper>
          <ImageWrapper>
            <img src={record.image} alt={record.title} />
          </ImageWrapper>

          <ItemDetails>
            <ItemName>{record.title}</ItemName>
            <ItemSize>{record.unit}</ItemSize>
            <ItemPrice>${record.price}</ItemPrice>
          </ItemDetails>
        </ItemWrapper>
      );
    },
  },
  {
    title: (
      <FormattedMessage id='intlTableColTitle2' defaultMessage='Quantity' />
    ),
    dataIndex: 'quantity',
    key: 'quantity',
    align: 'center',
    width: 100,
  },
  {
    title: <FormattedMessage id='intlTableColTitle3' defaultMessage='Price' />,
    dataIndex: '',
    key: 'price',
    align: 'right',
    width: 100,
    render: (text, record) => {
      return <p>${record.price * record.quantity}</p>;
    },
  },
];

const OrdersContent: React.FC<{}> = () => {
  const [order, setOrder] = useState(null);
  const [active, setActive] = useState('');

  const [targetRef, size] = useComponentSize();
  const orderListHeight = size.height - 79;
  const { data, error, loading } = useQuery(GET_ORDERS, {
    variables: {
      limit: 7,
      user: 1,
    },
  });

  useEffect(() => {
    if (data && data.orders && data.orders.length !== 0) {
      setOrder(data.orders[0]);
      setActive(data.orders[0].id);
      console.log(data);
    }
  }, [data && data.orders]);

  if (loading) {
    return <div>loading...</div>;
  }

  if (error) return <div>{error.message}</div>;

  const handleClick = (order: any) => {
    setOrder(order);
    setActive(order.id);
  };

  return (
    <OrderBox>
      <DesktopView>
        <OrderListWrapper style={{ height: size.height }}>
          <Title style={{ padding: '0 20px' }}>
            <FormattedMessage
              id='intlOrderPageTitle'
              defaultMessage='My Order'
            />
          </Title>
          <Scrollbar className='order-scrollbar'>
            <OrderList>
              {data.orders.length !== 0 ? (
                data.orders.map((current: any) => (
                  <OrderCard
                    key={current.id}
                    orderId={current.id}
                    className={current.id === active ? 'active' : ''}
                    status={progressData[current.status]}
                    date={current.date === undefined ? 'NO DATA' : dayjs(current.date.toString()).format('DD MMM YYYY')}
                    deliveryTime={current.deliveryTime}
                    amount={current.total}
                    onClick={() => {
                      handleClick(current);
                    }}
                  />
                ))
              ) : (
                <NoOrderFound>
                  <FormattedMessage
                    id='intlNoOrderFound'
                    defaultMessage='No order found'
                  />
                </NoOrderFound>
              )}
            </OrderList>
          </Scrollbar>
        </OrderListWrapper>

        <OrderDetailsWrapper ref={targetRef}>
          <Title style={{ padding: '0 20px' }}>
            <FormattedMessage
              id='orderDetailsText'
              defaultMessage='Order Details'
            />
          </Title>
          {order && order.id && (
            <OrderDetails
              progressStatus={order.status - 1}
              progressData={progressData}
              address={order.deliveryAddress}
              subtotal={order.subtotal}
              discount={order.discount}
              deliveryFee={order.deliveryFee}
              grandTotal={order.total}
              tableData={order.products}
              columns={orderTableColumns}
            />
          )}
        </OrderDetailsWrapper>
      </DesktopView>

      <MobileView>
        <OrderList>
          <OrderCardMobile
            orders={data.orders}
            className={order && order.id === active ? 'active' : ''}
            progressData={progressData}
            columns={orderTableColumns}
            onClick={() => {
              handleClick(order);
            }}
          />
        </OrderList>
      </MobileView>
    </OrderBox>
  );
};

export default OrdersContent;

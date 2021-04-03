import { gql } from '@apollo/client';

export const ADD_ORDER = gql`
  mutation addOrder($order: OrderInput!) {
    addOrder(order: $order) {
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

export const GET_PAYMENT = gql`
  mutation($paymentInput: String!) {
    charge(paymentInput: $paymentInput) {
      status
    }
  }
`;

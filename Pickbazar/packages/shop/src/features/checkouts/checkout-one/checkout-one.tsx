import React, { useContext, useState, useEffect } from 'react';
import Router from 'next/router';
import { Button } from 'components/button/button';
import CheckoutWrapper, {
  CheckoutContainer,
  OrderSummary,
  OrderSummaryItem,
  OrderLabel,
  OrderAmount,
  DeliverySchedule,
  DeliveryAddress,
  StyledContact,
  PaymentOption,
  CheckoutSubmit,
  CouponBoxWrapper,
} from './checkout-one.style';

import { v4 as uuid4 } from 'uuid';
import { CouponDisplay } from 'components/coupon-box/coupon-box';
import { ProfileContext } from 'contexts/profile/profile.context';
import { FormattedMessage } from 'react-intl';
import { useCart } from 'contexts/cart/use-cart';
import Schedules from 'features/schedule/schedule';
import Address from 'features/address/address';
import Coupon from 'features/coupon/coupon';
import Contact from 'features/contact/contact';
import Payment from 'features/payment/payment';
import {useMutation, gql} from '@apollo/client'
import {ADD_ORDER} from '../../../graphql/mutation/order';

// The type of props Checkout Form receives
interface MyFormProps {
  token: string;
  deviceType: any;
}

const Checkout: React.FC<MyFormProps> = ({ token, deviceType }) => {
  const {
    items,
    removeCoupon,
    coupon,
    clearCart,
    cartItemsCount,
    calculatePrice,
    calculateDiscount,
    calculateSubTotalPrice,
    isRestaurant,
    toggleRestaurant,
  } = useCart();

  const { state } = useContext(ProfileContext);
  const [loading, setLoading] = useState(false);
  const [isValid, setIsValid] = useState(false);
  const { address, contact, card, schedules } = state;

  const [delivery_address_id, setAddress] = useState(address[0].id);
  const [delivery_time_slot, setDeliveryTime] = useState(schedules[0].time_slot);
  const [contact_number_id, setContact] = useState(contact[0].id);
  const [card_id, setCard] = useState(card[0].id);

  const onChangedAddressValue = (item) => {
    setAddress(item.id);
  }

  const onChangedSchedule = (item) => {
    setDeliveryTime(item.time_slot);
  }

  const onChangedContactValue = (item) => {
    setContact(item.id);
  }

  const onChangedCard = (item) => {
    setCard(item.id);
    // console.log(coupon,'coupon');
    //  console.log(items,"cart's item");
  }

  const [addOrder] = useMutation(ADD_ORDER, {update(cache, { data:{addOrder} }) {
    //console.log(addOrder,'result');
    setLoading(true);
    if (isValid) {
      clearCart();
      Router.push({ pathname: '/order-received', query: addOrder });
    }
    setLoading(false);
  }});

  const handleSubmit = async () => {

    //[1]. Prepare the request.
    let newArray = items.map(function(item) {     
      var tmp = {
        id:item.id, 
        title:item.title, 
        image:item.image, 
        price:item.price, 
        unit:item.unit, 
        quantity:item.quantity, 
        type:item.type
      }
      return tmp; 
    });
    var params = {
      id                  : uuid4(),
      customer_id         : 1,
      card_id             : card_id,
      deliveryAddress     : delivery_address_id,
      deliveryContact     : contact_number_id,
      deliveryTime        : delivery_time_slot,
      deliveryFee         : `0.00`,   // TODO
      total               : calculatePrice(),
      discount            : calculateDiscount(),
      subtotal            : calculateSubTotalPrice(),
      coupon              : `${coupon.id}`,
      payment_id          : `1`,      // TODO
      quantity            : cartItemsCount,
      products            : newArray,
      status              : 0,
      date                : new Date()
    };
    //[2]. Send request.
    await addOrder({variables: { order: params }});
  };

  useEffect(() => {
    if (
      calculatePrice() > 0 &&
      cartItemsCount > 0 &&
      address.length &&
      contact.length &&
      card.length &&
      schedules.length
    ) {
      setIsValid(true);
    }
  }, [state]);
  useEffect(() => {
    return () => {
      if (isRestaurant) {
        toggleRestaurant();
        clearCart();
      }
    };
  }, []);

  return (
    <form>
      <CheckoutWrapper>
        <CheckoutContainer>
          <OrderSummary>
            <OrderSummaryItem style={{ marginBottom: 15 }}>
              <OrderLabel>
                <FormattedMessage id='subTotal' defaultMessage='Subtotal' /> (
                {cartItemsCount}{' '}
                <FormattedMessage id='itemsText' defaultMessage='items' />)
              </OrderLabel>
              <OrderAmount>${calculateSubTotalPrice()}</OrderAmount>
            </OrderSummaryItem>

            <OrderSummaryItem style={{ marginBottom: 30 }}>
              <OrderLabel>
                <FormattedMessage
                  id='shippingFeeText'
                  defaultMessage='Shipping Fee'
                />
              </OrderLabel>
              <OrderAmount>$0.00</OrderAmount>
            </OrderSummaryItem>

            <OrderSummaryItem
              style={{ marginBottom: 30 }}
              className='voucherWrapper'
            >
              <OrderLabel>
                <FormattedMessage id='voucherText' defaultMessage='Voucher' />
              </OrderLabel>
              {coupon ? (
                <CouponDisplay
                  code={coupon.code}
                  sign='-'
                  currency='$'
                  price={calculateDiscount()}
                  onClick={(e) => {
                    e.preventDefault();
                    removeCoupon();
                  }}
                />
              ) : (
                <CouponBoxWrapper>
                  <Coupon
                    errorMsgFixed={true}
                    style={{ maxWidth: 350, height: 50 }}
                  />
                </CouponBoxWrapper>
              )}
            </OrderSummaryItem>

            <OrderSummaryItem>
              <OrderLabel>
                <FormattedMessage id='totalText' defaultMessage='Total' />
              </OrderLabel>
              <OrderAmount>${calculatePrice()}</OrderAmount>
            </OrderSummaryItem>
          </OrderSummary>
          {/* DeliverySchedule */}
          <DeliverySchedule>
            <Schedules onChanged ={onChangedSchedule}/>
          </DeliverySchedule>
          {/* DeliveryAddress */}
          <DeliveryAddress>
            <Address onChangedValue={onChangedAddressValue}/>
          </DeliveryAddress>
          {/* Contact number */}
          <StyledContact>
            <Contact onChanged = {onChangedContactValue}/>
          </StyledContact>
          {/* PaymentOption */}
          <PaymentOption>
            <Payment deviceType={deviceType} onChangedCard = {onChangedCard}/>
          </PaymentOption>
          {/* CheckoutSubmit */}
          <CheckoutSubmit>
            <Button
              type='button'
              onClick={handleSubmit}
              disabled={!isValid}
              size='big'
              loading={loading}
              width='100%'
            >
              <FormattedMessage
                id='processCheckout'
                defaultMessage='Proceed to Checkout'
              />
            </Button>
          </CheckoutSubmit>
        </CheckoutContainer>
      </CheckoutWrapper>
    </form>
  );
};

export default Checkout;

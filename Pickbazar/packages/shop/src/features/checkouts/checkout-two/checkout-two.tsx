import React, { useContext, useState, useEffect } from 'react';
import Router from 'next/router';
import Link from 'next/link';
import { Button } from 'components/button/button';
import { CURRENCY } from 'utils/constant';
import { Scrollbar } from 'components/scrollbar/scrollbar';
import {ADD_ORDER} from '../../../graphql/mutation/order';
import { v4 as uuid4 } from 'uuid';

import CheckoutWrapper, {
  CheckoutContainer,
  CheckoutInformation,
  InformationBox,
  DeliverySchedule,
  CheckoutSubmit,
  HaveCoupon,
  CouponBoxWrapper,
  CouponInputBox,
  CouponCode,
  RemoveCoupon,
  TermConditionText,
  TermConditionLink,
  CartWrapper,
  CalculationWrapper,
  OrderInfo,
  Title,
  ItemsWrapper,
  Items,
  Quantity,
  Multiplier,
  ItemInfo,
  Price,
  TextWrapper,
  Text,
  Bold,
  Small,
  NoProductMsg,
  NoProductImg,
} from './checkout-two.style';

import { NoCartBag } from 'assets/icons/NoCartBag';

import Sticky from 'react-stickynode';
import { ProfileContext } from 'contexts/profile/profile.context';
import { FormattedMessage } from 'react-intl';
import { useCart } from 'contexts/cart/use-cart';
import { useLocale } from 'contexts/language/language.provider';
import { useWindowSize } from 'utils/useWindowSize';
import {useMutation, gql} from '@apollo/client'
import Coupon from 'features/coupon/coupon';
import Address from 'features/address/address';
import Schedules from 'features/schedule/schedule';
import Contact from 'features/contact/contact';
import Payment from 'features/payment/payment';

// The type of props Checkout Form receives
interface MyFormProps {
  token: string;
  deviceType: any;
}

type CartItemProps = {
  product: any;
};

const OrderItem: React.FC<CartItemProps> = ({ product }) => {
  const { id, quantity, title, name, unit, price, salePrice } = product;
  const displayPrice = salePrice ? salePrice : price;
  return (
    <Items key={id}>
      <Quantity>{quantity}</Quantity>
      <Multiplier>x</Multiplier>
      <ItemInfo>
        {name ? name : title} {unit ? `| ${unit}` : ''}
      </ItemInfo>
      <Price>
        {CURRENCY}
        {(displayPrice * quantity).toFixed(2)}
      </Price>
    </Items>
  );
};

const CheckoutWithSidebar: React.FC<MyFormProps> = ({ token, deviceType }) => {
  const [hasCoupon, setHasCoupon] = useState(false);
  const { state } = useContext(ProfileContext);
  const { isRtl } = useLocale();
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
  const [loading, setLoading] = useState(false);
  const [isValid, setIsValid] = useState(false);
  const { address, contact, card, schedules } = state;
  const size = useWindowSize();
  
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
        price:item.salePrice, 
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
      coupon              : coupon == null ? null : `${coupon.id}`,
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
          <CheckoutInformation>
            {/* DeliveryAddress */}
            <InformationBox>
              <Address
                increment={true}
                flexStart={true}
                buttonProps={{
                  variant: 'text',
                  type: 'button',
                  className: 'addButton',
                }}
                onChangedValue={onChangedAddressValue}
                icon={true}
              />
            </InformationBox>

            {/* DeliverySchedule */}
            <InformationBox>
              <DeliverySchedule>
                <Schedules increment={true} onChanged={onChangedSchedule} />
              </DeliverySchedule>
            </InformationBox>

            {/* Contact number */}
            <InformationBox>
              <Contact
                increment={true}
                flexStart={true}
                buttonProps={{
                  variant: 'text',
                  type: 'button',
                  className: 'addButton',
                }}
                onChanged={onChangedContactValue}
                icon={true}
              />
            </InformationBox>
            {/* PaymentOption */}

            <InformationBox
              className='paymentBox'
              style={{ paddingBottom: 30 }}
            >
              <Payment increment={true} deviceType={deviceType} onChangedCard={onChangedCard}/>

              {/* Coupon start */}
              {coupon ? (
                <CouponBoxWrapper>
                  <CouponCode>
                    <FormattedMessage id='couponApplied' />
                    <span>{coupon.code}</span>

                    <RemoveCoupon
                      onClick={(e) => {
                        e.preventDefault();
                        removeCoupon();
                        setHasCoupon(false);
                      }}
                    >
                      <FormattedMessage id='removeCoupon' />
                    </RemoveCoupon>
                  </CouponCode>
                </CouponBoxWrapper>
              ) : (
                <CouponBoxWrapper>
                  {!hasCoupon ? (
                    <HaveCoupon onClick={() => setHasCoupon((prev) => !prev)}>
                      <FormattedMessage
                        id='specialCode'
                        defaultMessage='Have a special code?'
                      />
                    </HaveCoupon>
                  ) : (
                    <CouponInputBox>
                      <Coupon errorMsgFixed={true} className='normalCoupon' />
                    </CouponInputBox>
                  )}
                </CouponBoxWrapper>
              )}

              <TermConditionText>
                <FormattedMessage
                  id='termAndConditionHelper'
                  defaultMessage='By making this purchase you agree to our'
                />
                <Link href='#'>
                  <TermConditionLink>
                    <FormattedMessage
                      id='termAndCondition'
                      defaultMessage='terms and conditions.'
                    />
                  </TermConditionLink>
                </Link>
              </TermConditionText>

              {/* CheckoutSubmit */}
              <CheckoutSubmit>
                <Button
                  type='button'
                  onClick={handleSubmit}
                  disabled={!isValid}
                  size='big'
                  loading={loading}
                  style={{ width: '100%' }}
                >
                  <FormattedMessage
                    id='processCheckout'
                    defaultMessage='Proceed to Checkout'
                  />
                </Button>
              </CheckoutSubmit>
            </InformationBox>
          </CheckoutInformation>

          <CartWrapper>
            <Sticky
              enabled={size.width >= 768 ? true : false}
              top={120}
              innerZ={999}
            >
              <OrderInfo>
                <Title>
                  <FormattedMessage
                    id='cartTitle'
                    defaultMessage='Your Order'
                  />
                </Title>

                <Scrollbar className='checkout-scrollbar'>
                  <ItemsWrapper>
                    {cartItemsCount > 0 ? (
                      items.map((item) => (
                        <OrderItem key={`cartItem-${item.id}`} product={item} />
                      ))
                    ) : (
                      <>
                        <NoProductImg>
                          <NoCartBag />
                        </NoProductImg>

                        <NoProductMsg>
                          <FormattedMessage
                            id='noProductFound'
                            defaultMessage='No products found'
                          />
                        </NoProductMsg>
                      </>
                    )}
                  </ItemsWrapper>
                </Scrollbar>

                <CalculationWrapper>
                  <TextWrapper>
                    <Text>
                      <FormattedMessage
                        id='subTotal'
                        defaultMessage='Subtotal'
                      />
                    </Text>
                    <Text>
                      {CURRENCY}
                      {calculateSubTotalPrice()}
                    </Text>
                  </TextWrapper>

                  <TextWrapper>
                    <Text>
                      <FormattedMessage
                        id='intlOrderDetailsDelivery'
                        defaultMessage='Delivery Fee'
                      />
                    </Text>
                    <Text>{CURRENCY}0.00</Text>
                  </TextWrapper>

                  <TextWrapper>
                    <Text>
                      <FormattedMessage
                        id='discountText'
                        defaultMessage='Discount'
                      />
                    </Text>
                    <Text>
                      {CURRENCY}
                      {calculateDiscount()}
                    </Text>
                  </TextWrapper>

                  <TextWrapper style={{ marginTop: 20 }}>
                    <Bold>
                      <FormattedMessage id='totalText' defaultMessage='Total' />{' '}
                      <Small>
                        (
                        <FormattedMessage
                          id='vatText'
                          defaultMessage='Incl. VAT'
                        />
                        )
                      </Small>
                    </Bold>
                    <Bold>
                      {CURRENCY}
                      {calculatePrice()}
                    </Bold>
                  </TextWrapper>
                </CalculationWrapper>
              </OrderInfo>
            </Sticky>
          </CartWrapper>
        </CheckoutContainer>
      </CheckoutWrapper>
    </form>
  );
};

export default CheckoutWithSidebar;

import React from 'react';
import { NextPage } from 'next';
import { gql, useQuery } from '@apollo/client';
import { Modal } from '@redq/reuse-modal';
import { SEO } from 'components/seo';
import RequestMedicine from 'features/request-product/request-product';
//import { GET_LOGGED_IN_CUSTOMER } from 'graphql/query/customer.query';

import { ProfileProvider } from 'contexts/profile/profile.provider';
import ErrorMessage from 'components/error-message/error-message';

import { getEmail } from './token';

type Props = {
  deviceType: {
    mobile: boolean;
    tablet: boolean;
    desktop: boolean;
  };
};
const RequestMedicinePage: NextPage<Props> = ({ deviceType }) => {
  const id = getEmail();
  var GET_LOGGED_IN_CUSTOMER = gql`
  query getUser($id: String = "${id}") {
    me(id: $id) {
      id
      name
      email
      address {
        id
        type
        name
        info
      }
      contact {
        id
        type
        number
      }
      card {
        id
        type
        cardType
        name
        lastFourDigit
      }
    }
  }
`;
  const { data, error, loading } = useQuery(GET_LOGGED_IN_CUSTOMER);
  if (loading) {
    return <div>loading...</div>;
  }
  if (error) return <ErrorMessage message={error.message} />;
  const token = true;

  return (
    <>
      <SEO
        title="Request Medicine - PickBazar"
        description="Request Medicine Details"
      />
      <ProfileProvider initData={data.me}>
        <Modal>
          <RequestMedicine token={token} deviceType={deviceType} />
        </Modal>
      </ProfileProvider>
    </>
  );
};

export default RequestMedicinePage;

import React, { useContext } from 'react';
import Link from 'next/link';
import { Input } from 'components/forms/input';
import firebase from 'firebase';
import {firebaseConfig} from './firebaseConfig';
import {
  Button,
  IconWrapper,
  Wrapper,
  Container,
  LogoWrapper,
  Heading,
  SubHeading,
  HelperText,
  Offer,
  // Input,
  Divider,
  LinkButton,
} from './authentication-form.style';
import { Facebook } from 'assets/icons/Facebook';
import { Google } from 'assets/icons/Google';
// import GoogleAuthButton from '../GoogleAuthButton/index';
// import FacebookAuthButton from '../FacebookAuthButton/index';
import { AuthContext } from 'contexts/auth/auth.context';
import { closeModal } from '@redq/reuse-modal';
import { FormattedMessage, useIntl } from 'react-intl';
import {useMutation, gql} from '@apollo/client';
import {SIGNUP_MUTATION} from '../../graphql/mutation/me';
import { GoogleLogin } from 'react-google-login';

export default function SignOutModal() {
  if (firebase.apps.length == 0) {
    firebase.initializeApp(firebaseConfig);
  }
  console.log("register page");
  const intl = useIntl();
  const { authDispatch } = useContext<any>(AuthContext);
  const [email, setEmail] = React.useState('');
  const [password, setPassword] = React.useState('');

  const toggleSignInForm = () => {
    authDispatch({
      type: 'SIGNIN',
    });
  };

  const [mutate, { data }] = useMutation(SIGNUP_MUTATION, {
    update(cache, { data: {signup} }){
      console.log(signup,'signup_result');
      closeModal();
    }
  });

  const callRegister = () =>{

    firebase.auth().createUserWithEmailAndPassword(email, password).catch(function(error) {
      //[1]. Error handling with firebase.
      var errorCode = error.code;
      var errorMessage = error.message;
      if(!error)
      {
        mutate({variables: {email,password}});
        return;
      }
      if(errorCode == 'auth/email-already-in-use')
        alert('Your email is already exist');
      else
        alert(error.message);
    });
  }

  const registerWithGoogle =async () => {

  }

  return (
    <Wrapper>
      <Container>
        <Heading>
          <FormattedMessage id='signUpBtnText' defaultMessage='Sign Up' />
        </Heading>
        <SubHeading>
          <FormattedMessage
            id='signUpText'
            defaultMessage='Every fill is required in sign up'
          />
        </SubHeading>
        <Input
          type='text'
          placeholder={intl.formatMessage({
            id: 'emailAddressPlaceholder',
            defaultMessage: 'Email Address or Contact No.',
          })}
          onChange={(e) => setEmail(e.target.value)}
          height='48px'
          backgroundColor='#F7F7F7'
          mb='10px'
        />
        <Input
          type='email'
          placeholder={intl.formatMessage({
            id: 'passwordPlaceholder',
            defaultMessage: 'Password (min 6 characters)',
          })}
          onChange={(e) => setPassword(e.target.value)}
          height='48px'
          backgroundColor='#F7F7F7'
          mb='10px'
        />
        <HelperText style={{ padding: '20px 0 30px' }}>
          <FormattedMessage
            id='signUpText'
            defaultMessage="By signing up, you agree to Pickbazar's"
          />
          &nbsp;
          <Link href='/'>
            <a>
              <FormattedMessage
                id='termsConditionText'
                defaultMessage='Terms &amp; Condition'
              />
            </a>
          </Link>
        </HelperText>
        <Button variant='primary' size='big' width='100%' type='submit' onClick={callRegister}>
          <FormattedMessage id='continueBtn' defaultMessage='Continue' />
        </Button>
        <Divider>
          <span>
            <FormattedMessage id='orText' defaultMessage='or' />
          </span>
        </Divider>
        <Button
          variant='primary'
          size='big'
          style={{
            width: '100%',
            backgroundColor: '#4267b2',
            marginBottom: 10,
          }}
        >
          <IconWrapper>
            <Facebook />
          </IconWrapper>
          <FormattedMessage
            id='continueFacebookBtn'
            defaultMessage='Continue with Facebook'
          />
        </Button>
        <Button
          variant='primary'
          size='big'
          style={{ width: '100%', backgroundColor: '#f83232' }}
          onClick={registerWithGoogle}
        >
          <IconWrapper>
            <Google />
          </IconWrapper>
          <FormattedMessage
            id='continueGoogleBtn'
            defaultMessage='Continue with Google'
          />
        </Button>
        <Offer style={{ padding: '20px 0' }}>
          <FormattedMessage
            id='alreadyHaveAccount'
            defaultMessage='Already have an account?'
          />{' '}
          <LinkButton onClick={toggleSignInForm}>
            <FormattedMessage id='loginBtnText' defaultMessage='Login' />
          </LinkButton>
        </Offer>
      </Container>
    </Wrapper>
  );
}

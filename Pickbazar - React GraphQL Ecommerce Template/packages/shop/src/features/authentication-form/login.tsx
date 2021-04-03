import React, { useContext } from 'react';
import {
  LinkButton,
  Button,
  IconWrapper,
  Wrapper,
  Container,
  LogoWrapper,
  Heading,
  SubHeading,
  OfferSection,
  Offer,
  // Input,
  Divider,
} from './authentication-form.style';
import { Facebook } from 'assets/icons/Facebook';
import { Google } from 'assets/icons/Google';
import { AuthContext } from 'contexts/auth/auth.context';
import { FormattedMessage, useIntl } from 'react-intl';
import { closeModal } from '@redq/reuse-modal';
import { Input } from 'components/forms/input';
import { firebaseConfig } from './firebaseConfig';
import firebase from 'firebase';
import {LOGIN_MUTATION} from '../../graphql/mutation/me';
import {useMutation, gql} from '@apollo/client';

export default function SignInModal() {
  if (firebase.apps.length == 0) {
    firebase.initializeApp(firebaseConfig);
  }
  //console.log(firebase.apps.length);
  const intl = useIntl();
  const { authDispatch } = useContext<any>(AuthContext);
  const [email, setEmail] = React.useState('');
  const [password, setPassword] = React.useState('');

  const [mutate] = useMutation(LOGIN_MUTATION, {
    update(cache, { data: {login} }){
      console.log(login);
      if(login.token == "wrong password")
      {
        alert("Your password is not correct.");
      }
      else if(login.token == "error")
      {
        alert("Not registered.");
      }else
      {
        localStorage.setItem('access_token', `${email}.${password}`);
        localStorage.setItem('loginedId', email);
        authDispatch({ type: 'SIGNIN_SUCCESS' });
        closeModal();
      }
    }
  });

  const toggleSignUpForm = () => {
    authDispatch({
      type: 'SIGNUP',
    });
  };

  const toggleForgotPassForm = () => {
    authDispatch({
      type: 'FORGOTPASS',
    });
  };

  const loginCallback =async () => {
    if (typeof window !== 'undefined') {
      firebase.auth().signInWithEmailAndPassword(email, password).then(function(user) {
          mutate({variables: {email,password}});
        }).catch(function(error) {
            var errorCode = error.code;
            var errorMessage = error.message;
        
            if (errorCode === 'auth/wrong-password') {
                alert('Wrong password.');
            } else {
                alert(errorMessage);         
            }
            console.log(error);
            return;
        });
      
    }
  };

  const loginWithGoogle = () => {
    var provider = new firebase.auth.GoogleAuthProvider();
    provider.addScope('https://www.googleapis.com/auth/contacts.readonly');
    firebase.auth().languageCode = 'pt';
    provider.setCustomParameters({
      'login_hint': 'viktor.tt65@outlook.com'
    });
    firebase.auth().signInWithPopup(provider).then(function(result) {
      console.log(result);
      // This gives you a Google Access Token. You can use it to access the Google API.
      // var token = result.credential.accessToken;
      // // The signed-in user info.
      // var user = result.user;
      // ...
    }).catch(function(error) {
      console.log(error,'google sign error');
      // Handle Errors here.
      var errorCode = error.code;
      var errorMessage = error.message;
      // The email of the user's account used.
      var email = error.email;
      // The firebase.auth.AuthCredential type that was used.
      var credential = error.credential;
      // ...
    });
  };

  const loginWithFacebook = () => 
  {

  }

  return (
    <Wrapper>
      <Container>
        <Heading>
          <FormattedMessage id='welcomeBack' defaultMessage='Welcome Back' />
        </Heading>

        <SubHeading>
          <FormattedMessage
            id='loginText'
            defaultMessage='Login with your email &amp; password'
          />
        </SubHeading>
        <form onSubmit={loginCallback}>
          <Input
            type='email'
            placeholder={intl.formatMessage({
              id: 'emailAddressPlaceholder',
              defaultMessage: 'Email Address.',
            })}
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
            height='48px'
            backgroundColor='#F7F7F7'
            mb='10px'
          />

          <Input
            type='password'
            placeholder={intl.formatMessage({
              id: 'passwordPlaceholder',
              defaultMessage: 'Password (min 6 characters)',
            })}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
            height='48px'
            backgroundColor='#F7F7F7'
            mb='10px'
          />

          <Button
            variant='primary'
            size='big'
            style={{ width: '100%' }}
            type='button'
            onClick={loginCallback}
          >
            <FormattedMessage id='continueBtn' defaultMessage='Continue' />
          </Button>
        </form>
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
          onClick={loginWithFacebook}
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
          style={{ width: '100%', backgroundColor: '#4285f4' }}
          onClick={loginWithGoogle}
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
            id='dontHaveAccount'
            defaultMessage="Don't have any account?"
          />{' '}
          <LinkButton onClick={toggleSignUpForm}>
            <FormattedMessage id='signUpBtnText' defaultMessage='Sign Up' />
          </LinkButton>
        </Offer>
      </Container>

      <OfferSection>
        <Offer>
          <FormattedMessage
            id='forgotPasswordText'
            defaultMessage='Forgot your password?'
          />{' '}
          <LinkButton onClick={toggleForgotPassForm}>
            <FormattedMessage id='resetText' defaultMessage='Reset It' />
          </LinkButton>
        </Offer>
      </OfferSection>
    </Wrapper>
  );
}

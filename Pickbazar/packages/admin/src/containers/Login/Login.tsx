import React, { useContext } from 'react';
import { Redirect, useHistory, useLocation } from 'react-router-dom';
import { Formik, Form, Field } from 'formik';
import * as Yup from 'yup';
import { AuthContext } from 'context/auth';
import {
  FormFields,
  FormLabel,
  FormTitle,
  Error,
} from 'components/FormFields/FormFields';
import { Wrapper, FormWrapper, LogoImage, LogoWrapper } from './Login.style';
import Input from 'components/Input/Input';
import Button from 'components/Button/Button';
import Logoimage from 'assets/image/logo/logo.png';

import firebase from 'firebase';
import {firebaseConfig} from './firebaseConfig';

const initialValues = {
  username: '',
  password: '',
};

const getLoginValidationSchema = () => {
  return Yup.object().shape({
    username: Yup.string().required('Username is Required!'),
    password: Yup.string().required('Password is Required!'),
  });
};

const MyInput = ({ field, form, ...props }) => {
  return <Input {...field} {...props} />;
};

export default () => {
  if (firebase.apps.length === 0) {
    firebase.initializeApp(firebaseConfig);
  }
  let history = useHistory();
  let location = useLocation();
  const { authenticate, isAuthenticated } = useContext(AuthContext);
  if (isAuthenticated) return <Redirect to={{ pathname: '/' }} />;

  let { from } = (location.state as any) || { from: { pathname: '/' } };
  let login = ({ username, password }) => {
    firebase.auth().signInWithEmailAndPassword(username, password).then(function(user) {
      //[1]. check the admin.
      localStorage.setItem('access_token', `${username}.${password}`);
      localStorage.setItem('userId',username);
      
      authenticate({ username, password }, () => {
        history.replace(from);
      });
    }).catch(function(error) {
        var errorCode = error.code;
        var errorMessage = error.message;
    
        if (errorCode === 'auth/wrong-password') {
            alert('Wrong password.');
        }else if(errorCode === "auth/user-not-found"){
            alert('Wrong username or email.');
        }else {
            alert(errorMessage);         
        }
        window.location.reload(false);
        return;
    });
  };
  return (
    <Wrapper>
      <FormWrapper>
        <Formik
          initialValues={initialValues}
          onSubmit={login}
          render={({ errors, status, touched, isSubmitting }) => (
            <Form>
              <FormFields>
                <LogoWrapper>
                  <LogoImage src={Logoimage} alt="pickbazar-admin" />
                </LogoWrapper>
                <FormTitle>Log in to admin</FormTitle>
              </FormFields>

              <FormFields>
                <FormLabel>Username</FormLabel>
                <Field
                  type="email"
                  name="username"
                  component={MyInput}
                  placeholder="Ex: demo@demo.com"
                />
                {errors.username && touched.username && (
                  <Error>{errors.username}</Error>
                )}
              </FormFields>
              <FormFields>
                <FormLabel>Password</FormLabel>
                <Field
                  type="password"
                  name="password"
                  component={MyInput}
                  placeholder="Ex: demo"
                />
                {errors.password && touched.password && (
                  <Error>{errors.password}</Error>
                )}
              </FormFields>
              <Button
                type="submit"
                disabled={isSubmitting}
                overrides={{
                  BaseButton: {
                    style: ({ $theme }) => ({
                      width: '100%',
                      marginLeft: 'auto',
                      borderTopLeftRadius: '3px',
                      borderTopRightRadius: '3px',
                      borderBottomLeftRadius: '3px',
                      borderBottomRightRadius: '3px',
                    }),
                  },
                }}
              >
                Submit
              </Button>
            </Form>
          )}
          validationSchema={getLoginValidationSchema}
        />
      </FormWrapper>
    </Wrapper>
  );
};

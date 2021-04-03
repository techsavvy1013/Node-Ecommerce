import { gql } from '@apollo/client';

export const UPDATE_ME = gql`
  mutation($meInput: String!) {
    updateMe(meInput: $meInput) {
      id
      name
      email
    }
  }
`;

export const SIGNUP_MUTATION = gql`
  mutation SignupMutation($email: String!, $password: String!) {
    signup(email: $email, password: $password) {
      token
    }
  }
`

export const LOGIN_MUTATION = gql`
  mutation LoginMutation($email: String!, $password: String!) {
    login(email: $email, password: $password) {
      token
    }
  }
`

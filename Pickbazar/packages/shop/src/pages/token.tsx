import react, {useEffect,useState} from 'react';
// module for saving tokens to local storage
const TOKEN_KEY = "access_token";
// tokens = { accessToken: "xyz", refreshToken: "abc" }
export function saveTokens(tokens) {
  localStorage.setItem(TOKEN_KEY, JSON.stringify(tokens));
}

export function getTokens() {
  return JSON.parse(localStorage.getItem(TOKEN_KEY));
}

export function deleteTokens() {
  localStorage.removeItem(TOKEN_KEY);
}

export function getEmail() {
    // const [windowLoaded, setWindowLoaded] = useState(false);
    // const [id, setid] = useState("");
    // useEffect(() => {
    //     if (!windowLoaded){
    //         if (typeof window !== 'undefined' && window){
    //             setWindowLoaded(true)
    //             setid(localStorage.getItem("loginedId"));
    //             return () => id;
    //         }
    //     }
    // }, [windowLoaded]);
    return localStorage.getItem("loginedId");
}
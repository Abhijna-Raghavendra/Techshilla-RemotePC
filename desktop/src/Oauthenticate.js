import React, { useEffect, useState } from 'react'
import { auth,provider } from './firebase'
import { signInWithPopup } from 'firebase/auth';
import { useNavigate } from 'react-router-dom'
import SignInButton from './SignInButton';
import { Button } from '@mui/material/';


function Oauthenticate() {
  const [value,setValue]=useState('')
  const handleClick=()=>{
  
    signInWithPopup(auth,provider).then((res)=>{
        setValue(res.user.email)
        localStorage.setItem("email",res.user.email)
    })
  }
  useEffect(()=>{
    setValue(localStorage.getItem('email'))
  })
  return (
    <div>
      {value?<SignInButton/>:
<Button variant="contained" onClick={handleClick}>Sign In With Google</Button>
      }
    </div>
  )
}

export default Oauthenticate
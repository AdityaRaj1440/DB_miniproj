import React, { useState } from 'react'
import { Link ,useNavigate} from "react-router-dom"
import axios from 'axios'
import loadUser from  './App';


const Register = () => {

    const navigate = useNavigate()
   
    const [email,setEmail]=useState('')
    const [username,setUsername]=useState('')
    const [password,setPassword]=useState('')
    

    const onSubmitChange = (e) => {
        e.preventDefault()
        const cred = {
            email: email,
            name : username,
            password:password
        }
        axios.post('http://localhost:3000/register',cred)
        .then(user=>{
            console.log(user)
            if(user){

                loadUser(user)
                navigate('/signin')
            }
        })
        .catch(err => console.log(err))
    }

    return (
        <div>
                <header className='header'>
                    <nav>
                        <p  className = 'f3 black pa4'>My Heading</p>
                    </nav>
                    <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                        <p  className = 'f3 link dim underline black pa4 pointer'
                     ><Link to={"/signin"}>
                    Sign in</Link>
                    </p>
                        
                    </nav>
                </header> 
                <h1>Register User </h1>

                <form onSubmit={onSubmitChange}>
                <div>
                    <input type="username"
                     placeholder='username'
                     onChange={(e)=>setUsername(e.target.value)} />
                </div>
                <div>
                    <input type="email" 
                    placeholder='email'
                    onChange={(e)=>setEmail(e.target.value)} />
                </div>
                <div>
                    <input type="password" 
                    placeholder='password'
                    onChange={(e)=>setPassword(e.target.value)} />
                </div>
                <div>
                <input type="submit" value="Register"/>
                </div>
                </form>
        </div>
    )
  
}

export default Register
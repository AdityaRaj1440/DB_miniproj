import { Link , useNavigate} from "react-router-dom"
import React, { useState } from 'react'
import axios from 'axios'

const Signin = () => {

    const navigate = useNavigate()
    
    const [username,setUsername]=useState('')
    const [password,setPassword]=useState('')
  
    const onSubmitChange = (e) => {
        e.preventDefault()
        const cred = {
            name : username,
            password:password
        }
        axios.post('http://localhost:8000/signin',cred)
        .then(res=>{
            console.log(res)
            navigate('/')
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
                     ><Link to={"/register"}>
                    Register</Link>
                    </p>
                        
                    </nav>
            </header> 
            <h1>Sign in User</h1>

            <form onSubmit={onSubmitChange}>
            <div>
                <input type="username" 
                placeholder='username'
                onChange={(e)=>setUsername(e.target.value)}
                />
            </div>
            <div>
                <input type="password"
                placeholder='password'
                onChange={(e)=>setPassword(e.target.value)}
                />
            </div>
            <div>
                <input type="submit" value="Sign In"/>
            </div>
            </form>
        </div>

    )
  
}

export default Signin;
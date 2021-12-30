import React from 'react'
import { Link } from "react-router-dom"

const Register = () => {

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
                <div>
                <input type="name" placeholder='name'/>
                </div>
                <div>
                    <input type="username" placeholder='username'/>
                </div>
                <div>
                    <input type="password" placeholder='password'/>
                </div>
                <div>
                <button onClick={() => window.location.href='/signin'} > Register</button>
                </div>
        </div>
    )
  
}

export default Register;
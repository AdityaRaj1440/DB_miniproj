import React from 'react'
import { Link } from "react-router-dom"

const Signin = () => {
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
            <div>
                <input type="username" placeholder='username'/>
            </div>
            <div>
                <input type="password" placeholder='password'/>
            </div>
            <div>
                {/* <Link to='/' className='btn btn-primary'>Sign in</Link> */}
            <button onClick={() => window.location.href='/'}> Sign in</button>
            </div>
            
        </div>

    )
  
}

export default Signin;
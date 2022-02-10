import { useNavigate} from "react-router-dom"
import React, { useState } from 'react'
import axios from 'axios'

const Login = () => {

    const navigate = useNavigate()
    
    const [username,setUsername]=useState('')
    const [password,setPassword]=useState('')
  
    const onSubmitChange = (e) => {
        e.preventDefault()
        // const cred = {
        //     name : username,
        //     password:password
        // }
        axios.get(`http://localhost:3000/adminLogin/${username}/${password}`)
        .then(res=>{
            console.log(res)
            alert(res.data[0].Result)
            navigate("/Comic")
        })
        .catch(err => console.log(err))
       
    }
    return (
        <div>
            <div className="container">
                <div className="row">
                    <div className="col-lg-3 col-md-2"></div>
                        <div className="col-lg-6 col-md-8 login-box">
                            <div className="col-lg-12 login-title">ADMIN LOGIN</div>
                            <div className="col-lg-12 login-form">
                                <form onSubmit={onSubmitChange}>
                                    <div className="form-group">
                                        <label className="form-control-label">USERNAME</label>
                                        <input type="text" 
                                        className="form-control" required
                                        onChange={(e)=>setUsername(e.target.value)} />
                                    </div>
                                    <div className="form-group">
                                        <label className="form-control-label">PASSWORD</label>
                                        <input type="password" 
                                        className="form-control" required
                                        onChange={(e)=>setPassword(e.target.value)} />
                                    </div>
                                    <center>
                                        <div className="col-lg-12 loginbttm">
                                            <div className="col-lg-6 login-btm login-button">
                                                <button type="submit" className="btn btn-outline-primary">LOGIN</button>
                                            </div>
                                        </div>
                                    </center>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
        </div>
)
}

export default Login
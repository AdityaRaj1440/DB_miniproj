import { useNavigate} from "react-router-dom"
import React, { useState ,useEffect} from 'react'
import handleAuth from './Login'
import axios from 'axios'


const Header = ({auth}) => {
    // const [as,setAs] = useState(false)
    // let adminstatus = false
    console.log(typeof(auth))
    var as = false
    if(auth){
        if(typeof auth === "string"){
            as = ( auth === 'true')
        }
        else{
            as = auth
        }
    }
   
   console.log("var",as)
    const navigate = useNavigate()

    const handlelogout = () =>{
        
        // e.preventDefault()
        
        axios.get(`http://localhost:3000/adminLogout`)
        .then(res=>{

            console.log(res)
            // alert(res.data[0].Result)
            sessionStorage.setItem('auth',false)
            navigate("/")
            
        })
        .catch(err => console.log(err))
    }

    return(

            <header className="header">  
                
                <div className="header-image">
                    {console.log("test: ",as)}

                    {
                        
                        as
                        ?
                        
                        <div className="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button className="btn btn-primary login" 
                            type="button"
                            onClick={ () => handlelogout()} >LOGOUT</button>
                        </div> 
                        
                        :
                        <div className="d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href='/Login'><button className="btn btn-primary login" type="button">LOGIN</button></a>
                        </div> 
                    }
                        
                </div>
                {/* <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <div className="header-img">
                        <div>
                        <img src= {require("./1.jpg") }
                            alt="header-img" />   

                        </div>
                    </div>
                </nav> */}
 
                    {/* <p className = 'f3 link dim underline black pa4 pointer'>
                        Signup
                    </p> */}
                    {/* <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                        
                    </nav>  */}
            </header>
    )
}

export default Header
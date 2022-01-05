import React, { useState } from 'react'
import axios from 'axios'
import { Link ,useNavigate} from "react-router-dom"

const Header = () => {
    
    const navigate = useNavigate()
    const [Comic_id,setComic_id]=useState('')
    // const [Origin_id,setOrigin_id]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:8000/showComics/${Comic_id}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err => console.log(err))
    }
       
    return(
        <div>
            <header className='header'>
                <nav>
                    <p  className = 'f3  pa4 pointer'>My Heading</p>
                </nav>
                <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <p className = 'f3 link dim underline black pa4 pointer'>
                        Signup
                    </p>
                    <p className = 'f3 link dim underline black pa4 pointer'>
                        Login
                    </p>
                </nav>
            </header>
                


            <div  className="w3-sidebar sidenav w3-light-grey w3-bar-block " >
                
                <h3 className="w3-bar-item " >Menu</h3>
                <a href="/" className="w3-bar-item w3-button active">Home</a>
                <a href="/" className="w3-bar-item w3-button" onClick={ () => navigate('./Novels') }>Novels</a>
                <a href="/" className="w3-bar-item w3-button">Genres</a>
                <a href="/" className="w3-bar-item w3-button">Link 4</a>
                <a href="/" className="w3-bar-item w3-button">Link 5</a>
                <a href="/" className="w3-bar-item w3-button">Link 6</a>
                <a href="/" className="w3-bar-item w3-button">Link 7</a>
                <div className="w3-dropdown-hover">
                    <button className="w3-button">Dropdown <i className="fa fa-caret-down"></i></button>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/" className="w3-bar-item w3-button">Link</a>
                        <a href="/" className="w3-bar-item w3-button">Link</a>
                    </div>
                </div>
            </div>
    
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <h2>Form</h2>
                    <p><b> GET  /comic/comic_id</b><br />Get the primary information about a movie.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Variables
                        <div>
                            <label className="ma3">API KEY</label>
                            <input type="name"
                            placeholder='api key'
                            />
                        </div>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Comic_ID</label>
                            <input type="name"  
                            placeholder='comic id'
                            onChange={(e)=>setComic_id(e.target.value)}
                            />
                        <label className="ma3 " >Origin_ID</label>
                            <input type="name"  
                            placeholder='origin id'
                            // onChange={(e)=>setOrigin_id(e.target.value)}
                            />
                        </div>
                        Query String
                        <div>
                            <label className="ma3">label3</label>
                                <input type="name" 
                                placeholder=''
                                />
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                        </div>        
                    </form>    
                <div style={{marginLeft: '10px'}} >
                    {
                        flag ? <div className='boundary'>
                            {console.log("Result: ",result)}
                        <div className='mb3 b'> Name : {result[0].name} <br/><br/> Genre : {result[0].Genre} </div> <hr />
                        <a href={`http://localhost:8000/showComics/${Comic_id}`} className='b i pa1'>http://localhost:8000/showComics/${Comic_id}</a>
                            </div>
                         : <></>
                    }
                </div>
                </div>
                
                
            </div>
                
        </div>
    )
}
             

export default Header
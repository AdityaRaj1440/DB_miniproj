import React, { useState } from 'react'
import axios from 'axios'

function Novels() {

    const [Book_id,setBook_id]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:8000/showNovels/${Book_id}`)
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
                <a href="/" className="w3-bar-item w3-button ">Home</a>
                <a href="/" className="w3-bar-item w3-button active">Novels</a>
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
                    <p>Curabitur eu leo volutpat, elementum nibh id, faucibus diam. Sed quis sapien sapien. Quisque scelerisque sollicitudin est et mollis. Cras eget finibus nunc.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Variables
                        <div>
                            <label className="ma3">API KEY</label>
                            <input type="name"
                            placeholder='api key'
                            />
                        </div>
                        Path Params
                        <div>
                        <label className="ma3 " >Book_id</label>
                            <input type="name"  
                            placeholder='book id'
                            onChange={(e)=>setBook_id(e.target.value)}
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
                        <div className='mb3 b'> Name : {result.name} <br/><br/> Genre : {result.genre} </div> <hr />
                        <a href={`http://localhost:8000/showNovels/${Book_id}`} className='b i pa1'>http://localhost:8000/showNovels/${Book_id}</a>
                            </div>
                         : <></>
                    }
                </div>
                </div>
            </div>
        </div>
    )
  }
  
  export default Novels;
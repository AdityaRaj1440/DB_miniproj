import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const LivActionByName = () => {
    
  
    
    const [name,setname]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Live/name/${name}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err =>  {
            console.log(err)
            // alert(err)   
        })
    }
       
    return(
        <div>
            <Header />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                            <h2 className='head'>LIVE ACTION By Exact Name</h2>
                    </div><hr />
                    
                    <p><b> GET  /live/name</b><br />Get the primary information about a live action .</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Name</label>
                            <input type="name"  
                            placeholder='live action name' required
                            onChange={(e)=>setname(e.target.value)}
                            />
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <div className='mb3 b'> Name : {result[0].Name} <br/><br/> Genres : {result[0].Genres} </div> <hr />
                            <a href={`http://localhost:3000/Live/name/${name}`} className='b i pa1'>http://localhost:3000/Live/name/${name}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
};

export default LivActionByName;

import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const ComicByOrigin = () => {
    
    const [Origin_id,setOrigin_id]=useState('JPN')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Comics/origin/${Origin_id}`)
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
                    <h2>COMICS  By Origin</h2><hr />
                    <p><b> GET  /comic/origin</b><br />Get the primary information about a comic.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Origin</label>
                            {/* <input type="name"  
                            placeholder='origin id'
                            onChange={(e)=>setOrigin_id(e.target.value)}
                            /> */}
                            <select 
                            type="name"  
                            placeholder='origin id'
                            onChange={(e)=> setOrigin_id(e.target.value)} >
                                <option value="JPN">JPN</option>
                                <option value="KRN">KRN</option>
                                <option value="CHN">CHN</option>
                            </select>
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary'>
                            <a href={`http://localhost:3000/Comics/origin/${Origin_id}`} className='b i pa1'>http://localhost:3000/Comics/origin/${Origin_id}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}

export default ComicByOrigin
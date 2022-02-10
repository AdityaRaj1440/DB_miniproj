import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const NovelsByOrigin = ( {auth} ) => {

    const [Origin_id,setOrigin_id]=useState('Japanese')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Novels/origin/${Origin_id}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err => {
            console.log(err)
            // alert(err)   
        })    
    }
       
    return(
        <div>
            <Header  auth={auth}  />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                   <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                    <h2  className="head">NOVELS  By Origin</h2>
                    </div><hr />                    
                    <p><b> GET  /novels/Origin_id</b><br />Get the primary information about Novels.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div>
                        <label className="ma3 " >Origin_id</label>
                        <select 
                            className='selectbox'
                            type="name"  
                            placeholder='origin id'
                            onChange={(e)=> setOrigin_id(e.target.value)} >
                                <option value="Japanese"> JAPANESE </option>
                                <option value="Chinese">CHINESE</option>
                                <option value="Korean">KOREAN</option>
                            </select>
                        </div><br />
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <a href={`http://localhost:3000/Novels/origin/${Origin_id}`} className='b i pa1' target='__blank'>http://localhost:3000/Novels/origin/${Origin_id}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}
  
export default NovelsByOrigin
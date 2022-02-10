import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const AdaptationsByName = ( {auth} ) => {
    
    const [name,setname]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        
        axios.get(`http://localhost:3000/Adaptations/name/exact/${name}`)
            .then(res=>{
                console.log(res.data)
                setResult(res.data)
                setFlag(true)
            })
            .catch(err =>  {
                console.log(err);
                // alert(err)   
            })
    }

    return(
        <div>
            <Header auth={auth}  />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                   <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                        <h2 className='head'>ADAPTATIONS By Exact Name</h2>
                    </div><hr /> 
                    
                    <p><b> GET  /Adaptations/name/exact</b><br />Get the primary information about an adaptation.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Adaptations</label>
                            <input type="name"  
                            placeholder='adaptation name' required
                            onChange={(e)=>setname(e.target.value)}
                            />
                        </div><br />
                        <div className="w3-margin">
                            <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <div className='mb3 b'> Name : {result[0].Name} </div> <hr />
                            <a href={`http://localhost:3000/Adaptations/name/exact/${name}`} className='b i pa1' target='__blank'>http://localhost:3000/Adaptations/name/exact/${name}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}

export default AdaptationsByName
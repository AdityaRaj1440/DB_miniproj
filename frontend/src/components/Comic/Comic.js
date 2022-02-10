import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const Comic = ({auth}) => {
    
    const [Comic_id,setComic_id]=useState('')
    const [Origin_id,setOrigin_id]=useState('JPN')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Comics/id/${Origin_id}/${Comic_id}`)
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
    // let pw = process.env.REACT_APP_PASSWORD
    return(
        <div>
            <Header auth={auth}/>
            <Menu />
            <div>
                


                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                   <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                        <h2 className='head'>COMICS</h2>
                        <a className='pa3 i mt1 ' href='http://localhost:3000/Comics'>Get all comics</a>
                   </div><hr />
                   
                    <p><b> GET  /comic</b>
                    <br />Get the primary information about a comic.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Comic_ID</label>
                            <input type="number"  
                            placeholder='comic id' required
                            onChange={(e)=>setComic_id(e.target.value)}
                            />
                        </div>
                        <div className='flexbox'>
                            <label className="ma3 " >Origin_id</label>
                            <select 
                            type="name"  
                            className='selectbox'
                            placeholder='origin id'
                            onChange={(e)=> setOrigin_id(e.target.value)} >
                                <option value="JPN">JPN</option>
                                <option value="KRN">KRN</option>
                                <option value="CHN">CHN</option>
                            </select>
                            
                        </div><br />
                        <div className="w3-margin">
                            <button type="submit" className=" pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <div className='mb3 b'> Name : {result.Name} <br/><br/> Genres : {result.Genres} </div> <hr />
                            <a href={`http://localhost:3000/Comics/id/${Origin_id}/${Comic_id}`} className='b i pa1'  target='__blank'>http://localhost:3000/Comics/name/${Origin_id}/${Comic_id}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}
             

export default Comic
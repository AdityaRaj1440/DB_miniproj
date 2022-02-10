import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const FilterRating = ( {auth} ) => {
    const [Type,setType]=useState('ANI')
    const [lrate,setlrate]=useState('')
    const [urate,seturate]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/showGenre/${Type}/filterByRatingBetween/${lrate}/${urate}`)
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
            <Header  auth={auth} />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                        <h2 className='head'>FILTER RATING</h2>
                   </div><hr />
                    <p><b> GET  /genre/filterRating</b><br />Get the filtered information on basis of rating.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Type</label>
                            <select 
                            id='selectbox'
                            className='selectbox'
                            type="name"  
                            placeholder='type'
                            onChange={(e)=> setType(e.target.value)} >
                                <option value="ANI">ANIME</option> 
                                <option value="LIV">LIVE ACTION</option>
                            </select>
                        </div>
                        <label className="ma3 " >Lower Rating</label>
                                <input type="decimal"  
                                placeholder='low Rating' required
                                onChange={(e)=>setlrate(e.target.value)}
                        />
                        <label className="ma3 " >Upper Rating</label>
                                <input type="decimal"  
                                placeholder='high Rating' required
                                onChange={(e)=>seturate(e.target.value)}
                        />
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <a href={`http://localhost:3000/showGenre/${Type}/filterByRatingBetween/${lrate}/${urate}`} className='b i pa1' target='__blank'>http://localhost:3000/showGenre/${Type}/filterByRatingBetween/${lrate}/${urate}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}


export default FilterRating

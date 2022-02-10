import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const FilterComStat = ( {auth} ) => {
    const [Status,setStatus]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/showGenre/comics/filterByStatus/${Status}`)
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
                        <h2 className='head'>FILTER COMIC BY STATUS</h2>
                   </div><hr />
                    <p><b> GET  /genre/comics/filterByStatus</b><br />Get the filtered information about comics.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Status</label>
                            <select 
                                type="name"  
                                className='selectbox'
                                onChange={(e)=> setStatus(e.target.value)} >
                                    <option value="Ongoing">Ongoing</option>
                                    <option value="Completed">Completed</option>
                            </select>
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <a href={`http://localhost:3000/showGenre/comics/filterByStatus/${Status}`} className='b i pa1' target='__blank'>http://localhost:3000/showGenre/comics/filterByStatus/${Status}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}

export default FilterComStat

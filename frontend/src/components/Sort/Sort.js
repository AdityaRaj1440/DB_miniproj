import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const Sort = () => {
    
    const [order,setorder]=useState('ASC')
    const [type,settype]=useState('novels')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/sort/${type}/alphabetical/${order}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err => {
            console.log(err)
            // alert(err)   
        })    }
       
    return(
        <div>
            <Header />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                   <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                    <h2 className='head'>SORTING</h2>
                    </div><hr />
                    
                    <p><b> GET /sort </b><br />Get the sorted information about comics , novels.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Type</label>
                        <select 
                            className='selectbox'
                            type="name"  
                            onChange={(e)=> settype(e.target.value)} >
                                <option value="novels">novels</option>
                                <option value="comics">comics</option>
                                <option value="adaptations">adaptations</option>
                            </select>
                        </div>
                        <div className='flexbox'>
                        <label className="ma3 " >Order</label>
                        <select 
                            className='selectbox'
                            type="name"  
                            onChange={(e)=> setorder(e.target.value)} >
                                <option value="ASC">ASCENDING</option>
                                <option value="DESC">DESCENDING</option>
                            </select>
                        </div><br />
                        <div className="w3-margin">
                            <button type="submit" className=" pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <a href={`http://localhost:3000/sort/${type}/alphabetical/${order}`} className='b i pa1'>http://localhost:3000/sort/${type}/alphabetical/${order}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Sort
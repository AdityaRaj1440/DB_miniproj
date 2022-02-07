import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const FilterComics = () => {
    
    const [name,setname]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/showGenre/filterComic/${name}`)
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
                    <h2>GENRES filter comic</h2><hr />
                    <p><b> GET  /genre/filterComic</b><br />Get the filtered information about comics.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Genre</label>
                            <input type="name"  
                            placeholder='genre name'
                            onChange={(e)=>setname(e.target.value)}
                            />
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary'>
                            <a href={`http://localhost:3000/showGenre/filterComic/${name}`} className='b i pa1'>http://localhost:3000/showGenre/filterComic/${name}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
} 

export default FilterComics
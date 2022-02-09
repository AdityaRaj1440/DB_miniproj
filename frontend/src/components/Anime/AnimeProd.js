import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'



const AnimeProd = () => {
    const [production,setproduction]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Anime/production/${production}`)
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
                            <h2  className='head'>ANIME By production</h2>
                    </div><hr />
                    
                    <p><b> GET  /anime/production</b><br />Get the primary information about an anime .</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        <label className="ma3 " >Production Name</label>
                            <input type="name"  
                            placeholder='production name' required
                            onChange={(e)=>setproduction(e.target.value)}
                            />
                        </div>
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <div className='mb3 b'> Name : {result[0].Production_House} <br/></div> <hr />
                            <a href={`http://localhost:3000/Anime/production/${production}`} className='b i pa1'>http://localhost:3000/Anime/production/${production}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )

}

export default AnimeProd
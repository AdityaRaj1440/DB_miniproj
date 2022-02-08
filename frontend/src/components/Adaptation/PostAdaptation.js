import React, { useEffect, useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'
import ClearFields from '../../functions/ClearFields'
import AdaptType from '../../functions/AdaptType'


const PostAdaptation = () => {
    const [Origin_id,setOrigin_id]=useState('JPN')
    const [Comic_id,setComic_id]=useState('')
    const [name,setname]=useState('')
    const [Type,setType]=useState('ANI')
    const [Rating,setRating]=useState('')
    const [Release_Date,setRelease_Date]=useState('')
    const [Url,setUrl]=useState('')
    const [Image,setImage]=useState('')
    const [Adapt_id,setAdapt_id]=useState('')
    const [Production_House,setProduction_House]=useState('')
    const [Total_Episodes,setTotal_Episodes]=useState('')
    const [No_of_Seasons,setNo_of_Seasons]=useState('')
    const [mode,setmode]=useState('SER')
    const [Director,setDirector]=useState('')
    const [Runtime,setRuntime]=useState('')

    
    useEffect(()=>{
        AdaptType(Type)
    })

        
        const onSubmitChange = (e) => {
            e.preventDefault()
            
            
            const postData = {
                "Type" : Type,
                "Adapt_id": Adapt_id,
                "Origin_id": Origin_id ,
                "Comic_id":  Comic_id,
                "Name" : name,
                "Image" : Image,
                "Url": Url,
                "Rating" : Rating,
                "Release_Date" : Release_Date,
                "Production_House": Production_House,
                "Total_Episodes" : Total_Episodes,
                "No_of_Seasons": No_of_Seasons,
                "mode": mode,
                "Director": Director,
                "Runtime": Runtime,

                // "Genres" : Genres
            }
            
            axios.post(`http://localhost:3000/Adaptations/insertAdaptation`,postData)
            .then(res=>{
                console.log(res.data)
                alert('Record Inserted Successfully !!')
            })
            .catch(err => {
                console.log(err)
                // alert(err)   
            })
            
            ClearFields()
        }
        

    return(
        <div>
            <Header />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                   <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                    <h2 className='head'>ADAPTATIONS</h2>
                    </div><hr />                    
                    <p><b> POST  /Adaptation/insertAdaptation</b><br />Post the primary information about an adaptation.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange} method='POST'>
                    
                        <div className=''>
                            <label className="ma3 " >Type</label>
                            <select 
                            id='selectbox'
                            type="name"  
                            placeholder='type'
                            onChange={(e)=> setType(e.target.value)} >
                                <option value="ANI">ANIME</option> 
                                <option value="LIV">LIVE ACTION</option>
                            </select>

                            <label className="ma3 " >Adapt_id</label>
                                <input type="name"  
                                placeholder='adapt id' required
                                onChange={(e)=>setAdapt_id(e.target.value)}
                                />

                            <label className="ma3 " >Origin_id</label>
                            <select 
                            className='selectbox'
                            type="name"  
                                onChange={(e)=> setOrigin_id(e.target.value)} >
                                    <option value="JPN">JAPANESE</option>
                                    <option value="CHN">CHINESE</option>
                                    <option value="KRN">KOREAN</option>
                                </select>
                            <label className="ma3 " >Comic_id</label>
                                <input type="name"  
                                placeholder='Comic_id' required
                                onChange={(e)=>setComic_id(e.target.value)}
                                />
                            <label className="ma3 " >Name</label>
                                <input type="name"  
                                placeholder='Name' required
                                onChange={(e)=>setname(e.target.value)}
                                />
                            <label className="ma3 " >Image Url</label>
                                <input type="name"  
                                placeholder='Image' required
                                onChange={(e)=>setImage(e.target.value)}
                                />      
                            <label className="ma3 " >Url</label>
                                <input type="name"  
                                placeholder='Url' required
                                onChange={(e)=>setUrl(e.target.value)}
                                /> 
                            <label className="ma3 " >Rating</label>
                                <input type="decimal"  
                                placeholder='Rating' required
                                onChange={(e)=>setRating(e.target.value)}
                                />
                            <label className="ma3 " >Release Date</label>
                                <input type="date"  
                                placeholder='Release_Date' required
                                onChange={(e)=>setRelease_Date(e.target.value)}
                                />
                            
                            <label className="ma3 " >Production House</label>
                                <input type="name"  
                                className='ANI'
                                placeholder='Production_House' required
                                onChange={(e)=>setProduction_House(e.target.value)}
                                /> 
                            <label className="ma3 " >Total Episodes</label>
                                <input type="number"  
                                className='ANI'
                                placeholder='Total_Episodes' required
                                onChange={(e)=>setTotal_Episodes(e.target.value)}
                                />
                            <label className="ma3 " >No of Seasons</label>
                                <input type="number"  
                                className='ANI'
                                placeholder='No_of_Seasons' required
                                onChange={(e)=>setNo_of_Seasons(e.target.value)}
                                />
                            <label className="ma3 " >Mode</label>
                                <select 
                            className='selectbox'
                            type="name"  
                                onChange={(e)=> setmode(e.target.value)} >
                                    <option value="SER">SERIES</option>
                                    <option value="MOV">MOVIES</option>
                                </select>
                            <label className="ma3 " >Director name</label>
                                <input type="name"  
                                className='LIV'
                                placeholder='Director' required
                                onChange={(e)=>setDirector(e.target.value)}
                                />
                            <label className="ma3 " >Runtime</label>
                                <input type="name"  
                                className='LIV'
                                placeholder='Runtime' required 
                                onChange={(e)=>setRuntime(e.target.value)}
                                />
                        </div>
                        
                        <div className="w3-margin">
                            <button type="submit"  className=" pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                </div>
            </div>
        </div>
    )
}

export default PostAdaptation
import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'
import ListofGenre from '../../ListofGenre'
import ClearFields from '../../functions/ClearFields'

let genArray= new Array(36)

const PostComic = () => {
    const [Origin_id,setOrigin_id]=useState('')
    const [Comic_id,setComic_id]=useState('')
    const [name,setname]=useState('')
    const [Status,setStatus]=useState('Ongoing')
    const [Total_Chapter,setTotal_Chapter]=useState('')
    const [Other_Media,setOther_Media]=useState('Y')
    const [Url,setUrl]=useState('')
    const [Image,setImage]=useState('')
    const [Synopsis,setSynopsis]=useState('')

    const [Genre,setGenres] = useState([])
        
        const onSubmitChange = (e) => {
            e.preventDefault()
            
            let Genres = []
            for(let i=0 ; i<Genre.length ; i++){
                if(genArray[i] === 1){
                    Genres.push(i+1)
                }
            }
            
            const postData = {
                "Origin_id": Origin_id ,
                "Comic_id":  Comic_id,
                "Name" : name,
                "Status" : Status,
                "Total_Chapter" : Total_Chapter,
                "Other_Media" : Other_Media,
                "Url": Url,
                "Image" : Image,
                "Synopsis" : Synopsis,
                "Genres" : Genres
            }
            
            axios.post(`http://localhost:3000/Comics/insertComic`,postData)
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
        
        const handleCheck = (e) =>{

            if(genArray[e.target.id - 1] === 1 )
                genArray[e.target.id-1 ] = 0
            else    
                genArray[e.target.id -1] = 1
            setGenres(genArray)
    }   
       
    return(
        <div>
            <Header />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <h2>COMICS</h2><hr />
                    <p><b> POST  /Comic/insertComic</b><br />Post the primary information about a comic.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange} method='POST'>
                    
                        <div className=''>
                            <label className="ma3 " >Origin_id</label>
                            <select 
                            type="name"  
                            onChange={(e)=> setOrigin_id(e.target.value)} >
                                <option value="JPN">JPN</option>
                                <option value="KRN">KRN</option>
                                <option value="CHN">CHN</option>
                            </select>

                            <label className="ma3 " >Comic_id</label>
                                <input type="number"  
                                placeholder='Comic_id' required
                                onChange={(e)=>setComic_id(e.target.value)}
                                />
                            <label className="ma3 " >Name</label>
                                <input type="name"  
                                placeholder='Name' required
                                onChange={(e)=>setname(e.target.value)}
                                />
                            <label className="ma3 " >Status</label>
                                <select 
                                type="name"  
                                onChange={(e)=> setStatus(e.target.value)} >
                                    <option value="Ongoing">Ongoing</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            <label className="ma3 " >Total_Chapter</label>
                                <input type="number"  
                                placeholder='Total_Chapter' required
                                onChange={(e)=>setTotal_Chapter(e.target.value)}
                                />
                            <label className="ma3 " >Other_Media</label>
                                <select 
                                type="name"  
                                onChange={(e)=> setOther_Media(e.target.value)} >
                                    <option value="Y">YES</option>
                                    <option value="N">NO</option>
                                </select>
                            <label className="ma3 " >Url</label>
                                <input type="name"  
                                className="form-control"
                                placeholder='Url' required
                                onChange={(e)=>setUrl(e.target.value)}
                                /> 
                            <label className="ma3 " >Image Url</label>
                                <input type="name"  
                                className="form-control"
                                placeholder='Image' required
                                onChange={(e)=>setImage(e.target.value)}
                                /> 
                            <label className="ma3" >Synopsis</label>
                            <textarea
                                type="name" 
                                placeholder='Synopsis'
                                className="form-control" required
                                onChange={(e)=>setSynopsis(e.target.value)}
                                rows="6"
                            />    
                            <label className="ma3 " >Genres : </label>
                               
                               <ListofGenre handleCheck={handleCheck} />   

                        </div>
                        
                        <div className="w3-margin">
                            <button type="submit"  className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                        </div>        
                    </form>    
                </div>
            </div>
        </div>
    )
}

export default PostComic
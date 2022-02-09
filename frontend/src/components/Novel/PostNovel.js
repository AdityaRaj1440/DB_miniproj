import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'
import ListofGenre from '../../ListofGenre'
import ClearFields from '../../functions/ClearFields'


let genArray= new Array(36)

const PostNovel = () => {
        
    const [Book_id,setBook_id]=useState('')
    const [name,setname]=useState('')
    const [Status,setStatus]=useState('Ongoing')
    const [Origin,setOrigin]=useState('Japanese')
    const [Total_Chapter,setTotal_Chapter]=useState('')
    const [Release_Date,setRelease_Date]=useState('')
    const [Last_Updated,setLast_Updated]=useState('')
    const [Author_Name,setAuthor_Name] = useState('')
    const [Url,setUrl]=useState('')
    const [Image,setImage]=useState('')
    const [Synopsis,setSynopsis]=useState('')
    
    const [Genre,setGenres] = useState([])

        const onSubmitChange = (e) => {
            e.preventDefault()
            
            let Genres = []
            for(let i=0 ; i < Genre.length ; i++){
                if(genArray[i] === 1){
                    Genres.push(i+1)
                }
            }
            
            const postData = {
               "Book_id": Book_id ,
               "Name" : name,
               "Status" : Status,
               "Origin":  Origin,
               "Total_Chapter" : Total_Chapter,
                "Release_Date" : Release_Date,
                "Last_Updated": Last_Updated,
                "Author_Name":  Author_Name,
                "Url": Url,
                "Image" : Image,
                "Synopsis" : Synopsis,
                "Genres" : Genres
            }
            
            axios.post(`http://localhost:3000/Novels/insertNovel`,postData)
            .then(res=>{
                console.log(res.data)
                let msg= res.data 
                alert(msg)
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
                <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                    <h2 className='head'>NOVELS</h2>
                   </div><hr />
                    <p><b> POST  /novel</b><br />Post the primary information about a novel.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange} method='POST'>
                        <div className=''>
                            <label className="ma3 " >Book_id</label>
                                <input type="number"  
                                placeholder='origin id' required
                                onChange={(e)=>setBook_id(e.target.value)}
                                />
                            <label className="ma3 " >Name</label>
                                <input type="name"  
                                placeholder='Name' required
                                onChange={(e)=>setname(e.target.value)}
                                />
                            <label className="ma3 " >Status</label>
                                <select 
                            className='selectbox'
                            type="name"  
                                placeholder='status'
                                onChange={(e)=> setStatus(e.target.value)} >
                                    <option value="Ongoing">Ongoing</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            <label className="ma3 " >Origin</label>
                            <select 
                            className='selectbox'
                            type="name"  
                            placeholder='origin id'
                            onChange={(e)=> setOrigin(e.target.value)} >
                                <option value="Japanese"> JAPANESE </option>
                                <option value="Chinese">CHINESE</option>
                                <option value="Korean">KOREAN</option>
                            </select>
                            <label className="ma3 " >Total_Chapter</label>
                                <input type="number"  
                                placeholder='Total_Chapter' required
                                onChange={(e)=>setTotal_Chapter(e.target.value)}
                                />
                            <label className="ma3 " >Release Year</label>
                                <input type="number"
                                placeholder='YYYY'
                                min="1800"
                                max="2100" required
                                onChange={(e)=>setRelease_Date(e.target.value)}
                                />
                            <label className="ma3 " >Last_Updated</label>
                                <input type="date"  
                                placeholder='Last_Updated' required
                                onChange={(e)=>setLast_Updated(e.target.value)}
                                />
                            <label className="ma3 " >Author_Name</label>
                                <input type="name"  
                                placeholder='Author_Name' required
                                onChange={(e)=>setAuthor_Name(e.target.value)}
                                /> 
                            <label className="ma3 " >Url</label>
                                <input type="name"  
                                placeholder='Url' required
                                onChange={(e)=>setUrl(e.target.value)}
                                /> 
                            <label className="ma3 " >Image Url</label>
                                <input type="name"  
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
                            <button type="submit"  className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>      
                          
                    </form>    
                </div>
            </div>
        </div>
    )

}

export default PostNovel
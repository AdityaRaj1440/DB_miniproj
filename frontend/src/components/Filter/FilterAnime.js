import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'
import ListofGenre from '../../ListofGenre'
import ClearFields from '../../functions/ClearFields'
import GenreArray from '../../GenreArray'

let str=''
let genArray= new Array(36)
let arr= [GenreArray]


const FilterAnime = ({auth} ) => {


    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const [Genre,setGenres] = useState([])

    let Genres = []
    
    const onSubmitChange = (e) => {

        e.preventDefault()

        for(let i=0 ; i<Genre.length ; i++){
            if(genArray[i] === 1){
                // Genres.push(i+1)
                str+= "/"+(arr[i].Name)
            }
        }
        // console.log(str)
        //  console.log('url',`http://localhost:3000/showGenre/filterAnime${str}`);
        
        axios.get(`http://localhost:3000/showGenre/filterAnime${str}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err =>  {
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
            <Header  auth={auth} />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                        <h2 className='head'>FILTER ANIME</h2>
                   </div><hr />
                    <p><b> GET  /genre/filterAnime</b><br />Get the filtered information about anime.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        {/* <label className="ma3 " >Genre</label>
                            <input type="name"  
                            placeholder='genre name'    required
                            onChange={(e)=>setname(e.target.value)}
                            /> */}
                        </div>
                        <label className="ma3 " >Genres : </label>
                               
                               <ListofGenre handleCheck={handleCheck} />   


                        <div className="w3-margin">
                            <button
                            
                            type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {console.log("str: ",`http://localhost:3000/showGenre/filterAnime${str}`)}
                        {
                            flag ? <div className='boundary-api'>

                            <a href={`http://localhost:3000/showGenre/filterAnime${str}`} className='b i pa1' target='__blank'>http://localhost:3000/showGenre/filterAnime${str}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}

export default FilterAnime;

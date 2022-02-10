import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'
import ListofGenre from '../../ListofGenre'
import ClearFields from '../../functions/ClearFields'
let str=''
let genArray= new Array(36)
let arr= [
    {
    "Genre_id": 1,
    "Name": "Adventure"
    },
    {
    "Genre_id": 2,
    "Name": "Action"
    },
    {
    "Genre_id": 3,
    "Name": "Adult"
    },
    {
    "Genre_id": 4,
    "Name": "Comedy"
    },
    {
    "Genre_id": 5,
    "Name": "Cooking"
    },
    {
    "Genre_id": 6,
    "Name": "Doujinshi"
    },
    {
    "Genre_id": 7,
    "Name": "Drama"
    },
    {
    "Genre_id": 8,
    "Name": "Ecchi"
    },
    {
    "Genre_id": 9,
    "Name": "Fantasy"
    },
    {
    "Genre_id": 10,
    "Name": "Gender-Bender"
    },
    {
    "Genre_id": 11,
    "Name": "Harem"
    },
    {
    "Genre_id": 12,
    "Name": "Historical"
    },
    {
    "Genre_id": 13,
    "Name": "Horror"
    },
    {
    "Genre_id": 14,
    "Name": "Isekai"
    },
    {
    "Genre_id": 15,
    "Name": "Josei"
    },
    {
    "Genre_id": 16,
    "Name": "Martial Arts"
    },
    {
    "Genre_id": 17,
    "Name": "Mature"
    },
    {
    "Genre_id": 18,
    "Name": "Mecha"
    },
    {
    "Genre_id": 19,
    "Name": "Medical"
    },
    {
    "Genre_id": 20,
    "Name": "Mystery"
    },
    {
    "Genre_id": 21,
    "Name": "Oneshot"
    },
    {
    "Genre_id": 22,
    "Name": "Psychological"
    },
    {
    "Genre_id": 23,
    "Name": "Romance"
    },
    {
    "Genre_id": 24,
    "Name": "School life"
    },
    {
    "Genre_id": 25,
    "Name": "Sci-fi"
    },
    {
    "Genre_id": 26,
    "Name": "Seinen"
    },
    {
    "Genre_id": 27,
    "Name": "Shoujo"
    },
    {
    "Genre_id": 28,
    "Name": "Shoujo ai"
    },
    {
    "Genre_id": 29,
    "Name": "Shounen"
    },
    {
    "Genre_id": 30,
    "Name": "Shounen ai"
    },
    {
    "Genre_id": 31,
    "Name": "Slice of life"
    },
    {
    "Genre_id": 32,
    "Name": "Smut"
    },
    {
    "Genre_id": 33,
    "Name": "Sports"
    },
    {
    "Genre_id": 34,
    "Name": "Supernatural"
    },
    {
    "Genre_id": 35,
    "Name": "Tragedy"
    },
    {
    "Genre_id": 36,
    "Name": "Webtoons"
    },
    {
    "Genre_id": 37,
    "Name": "Yaoi"
    },
    {
    "Genre_id": 38,
    "Name": "Yuri"
    }]


const FilterComic = () => {

    const [name,setname]=useState('')
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
        axios.get(`http://localhost:3000/showGenre/filterComic${str}`)
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
            <Header />
            <Menu />
            <div>
                <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                    <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                        <h2 className='head'>FILTER COMIC</h2>
                        <a className='pa3 i mt1 ' href='http://localhost:3000/showGenre'>Get all genres</a>
                    </div><hr />
                    <p><b> GET  /genre/filterComic</b><br />Get the filtered information about comics.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div className='flexbox'>
                        {/* <label className="ma3 " >Genre</label>
                            <input type="name"  
                            placeholder='genre name'
                            onChange={(e)=>setname(e.target.value)}
                            /> */}
                        </div>
                        <label className="ma3 " >Genres : </label>
                               
                               <ListofGenre handleCheck={handleCheck} />   
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <a href={`http://localhost:3000/showGenre/filterComic${str}`} className='b i pa1'>http://localhost:3000/showGenre/filterComic${str}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
} 

export default FilterComic
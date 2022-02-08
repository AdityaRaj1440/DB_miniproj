import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const Novels = () => {

    const [Book_id,setBook_id]=useState('')
    const [flag,setFlag]=useState(false)
    const [result,setResult]=useState({})

    const onSubmitChange = (e) => {
        e.preventDefault()
        axios.get(`http://localhost:3000/Novels/id/${Book_id}`)
        .then(res=>{
            console.log(res.data)
            setResult(res.data)
            setFlag(true)
        })
        .catch(err => {
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
                        <h2 className='head'>NOVELS</h2><hr />
                        <a className='pa3 i mt1' href='http://localhost:3000/Novels'>Get all novels</a>
                    </div><hr />

                    <p><b> GET  /novels/book_id</b><br />Get the primary information about Novels.</p>

                    <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                        Path Params
                        <div>
                        <label className="ma3 " >Book_id</label>
                            <input type="number"  
                            placeholder='book id'
                            onChange={(e)=>setBook_id(e.target.value)}
                            />
                        </div><br />
                        <div className="w3-margin">
                            <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                        </div>        
                    </form>    
                    <div style={{marginLeft: '10px'}} >
                        {
                            flag ? <div className='boundary-api'>
                            <div className='mb3 b'> Name : {result.Name} <br/><br/> Genres : {result.Genres} </div> <hr />
                            <a href={`http://localhost:3000/Novels/id/${Book_id}`} className='b i pa1'>http://localhost:3000/Novels/id/${Book_id}</a>
                                </div>
                            : <></>
                        }
                    </div>
                </div>
            </div>
        </div>
    )
}
  
  export default Novels;
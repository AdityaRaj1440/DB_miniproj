import React, { useState } from 'react'
import axios from 'axios'
import Menu from '../../Menu'
import Header from '../../Header'

const Music = ( {auth} ) => {

  const [name,setname]=useState('')
  const [flag,setFlag]=useState(false)
  const [result,setResult]=useState({})

  const onSubmitChange = (e) => {
      e.preventDefault()
      axios.get(`http://localhost:3000/Music/name/${name}`)
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
          <Header  auth={auth}  />
          <Menu />
          <div>
              <div className="w3-container boundary content" style={{marginLeft:'14rem'}}>
                  <div style = {{ display: 'flex' ,justifyContent: 'space-between' }}>
                    <h2  className='head'>MUSIC By Name</h2>
                    <a className='pa3 i mt1 ' href='http://localhost:3000/Music'>Get all musics</a>
                  </div><hr />
                  <p><b> GET  /music/name</b><br />Get the primary information about music on anime.</p>

                  <form className=" w3-margin pa1 " onSubmit={onSubmitChange}>
                      Path Params
                      <div className='flexbox'>
                      <label className="ma3" >Music Name</label>
                          <input type="name"  
                          placeholder='music name' required
                          onChange={(e)=>setname(e.target.value)}
                          />
                      </div><br />
                      <div className="w3-margin">
                          <button type="submit" className="pa3 w3-round-xlarge " style={{width:'6em'}}>Send</button>
                      </div>        
                  </form>    
                  <div style={{marginLeft: '10px'}} >
                      {
                          flag ? <div className='boundary-api'>
                          <div className='mb3 b '> Name : {result[0].Name} <br/></div> <hr />
                          <a href={`http://localhost:3000/Music/name/${name}`} className='b i pa1' target='__blank'>http://localhost:3000/Music/name/${name}</a>
                              </div>
                          : <></>
                      }
                  </div>
              </div>
          </div>
      </div>
  )
}

export default Music

import axios from "axios"
import React, { useEffect, useState } from 'react'


const Card = (props) => {

    const [result,setResult]=useState({})
    let image= ""
    let name= ""
    let cs=""
    useEffect(()=>{

            axios.get(`http://localhost:3000/${props.Type}/name/${props.name}`)
            .then(res=>{
                    setResult(res.data)
            })
            .catch(err =>  {
                console.log(err)
            })
    
    },[props.Type , props.name] )

    if(Array.isArray(result))
    {
      image= result[0].Image
      name= result[0].Name
      
    }
    else
    {
        image= result.Image
        name= result.Name
    }

    return(
        <>
        {/* <div className='tc bg-light-green dib br3 pa3 ma2 grow bw2 shadow-4'> */}
        {console.log("check:", Array.isArray(result))}
        
              
            <img src = {`${image}?100x100`} alt={`${name}`  } className='tc br3 ma2 grow shadow-4 img2 startimg' />
            
        {/* </div> */}
        
        </>
    )
}

export default Card
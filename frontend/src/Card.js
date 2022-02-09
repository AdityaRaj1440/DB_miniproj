import axios from "axios"
import React, { useEffect, useState } from 'react'


const Card = (props) => {

    const [result,setResult]=useState({})

    useEffect(()=>{

            axios.get(`http://localhost:3000/${props.Type}/name/${props.name}`)
            .then(res=>{
                    setResult(res.data)
            })
            .catch(err =>  {
                console.log(err)
            })
    
    },[props.Type , props.name] )



    return(
        <>
        {/* <div className='tc bg-light-green dib br3 pa3 ma2 grow bw2 shadow-4'> */}
        
            <img src = {`${result.Image}?100x100`} alt={`${result.Name}`  } className='tc br3 ma2 grow shadow-4 startimg' />
            
        {/* </div> */}
        
        </>
    )
}

export default Card
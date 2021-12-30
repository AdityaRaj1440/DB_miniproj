
import React from "react";

const Box = ({title}) => {
    return(
        <div className='tc bg-light-blue dib br3 pa5 ma2 grow bw2 pointer shadow-4' onClick={() => window.location.href='/'+title.toLowerCase()}>
            <div>
                <p >{title}</p>
            </div>
        </div>
    )
}

export default Box
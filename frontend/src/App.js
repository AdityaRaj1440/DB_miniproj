
import React from "react";
import Header from './Header';
import Sidebar2 from "./Sidebar2";
import {useEffect} from 'react'
import axios from 'axios'


const App = () => {

  useEffect(()=>{
    axios.get("http://localhost:8000/")
    .then(res=>console.log(res.data))
    .catch(err=>console.log(err))
  },[])

   return (
        <div >
            <Header />
            {/* <Sidebar2 /> */}
        </div>
  );
}

export default App;

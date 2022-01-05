
import React from "react";
import Header from './Header';
import Sidebar2 from "./Sidebar2";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import {useEffect} from 'react'
import axios from 'axios'
import Novels from "./Novels";


const App = () => {

  useEffect(()=>{
    axios.get("http://localhost:8000/")
    .then(res=>console.log(res.data))
    .catch(err=>console.log(err))
  },[])

   return (
     <Router>
        <div >
          <Routes>
            
            <Route path='/' element={<Header />} />
            {/* <Route path='/' element={<Sidebar2 />} /> */}
            <Route path='/Novels' element={<Novels />} />
          </Routes>
        </div>

     </Router>
  );
}

export default App;

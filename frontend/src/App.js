
import React from "react";
import { BrowserRouter as Router, Routes, Route ,Navigate } from "react-router-dom"
import Login from "./Login";
// import Register from "./Register";
import Comic from "./components/Comic/Comic"
import ComicByName from "./components/Comic/ComicByName";
import ComicByOrigin from "./components/Comic/ComicByOrigin";
import Novels from "./components/Novel/Novels";
import NovelsByName from "./components/Novel/NovelsByName";
import NovelsByOrigin from "./components/Novel//NovelsByOrigin";
import Adaptations from "./components/Adaptation/Adaptations";
import AdaptationsByName from "./components/Adaptation/AdaptationsByName";
import PostAdaptation from "./components/Adaptation/PostAdaptation";
import FilterComic from "./components/Filter/FilterComic";
import FilterNovel from "./components/Filter/FilterNovel";
import Sort from "./components/Sort/Sort";
import PostComic from "./components/Comic/PostComic";
import PostNovel from "./components/Novel/PostNovel";
import Anime from "./components/Anime/Anime";
import AnimeProd from "./components/Anime/AnimeProd";
import SortByRating from "./components/Sort/SortByRating";
import SortByChapter from "./components/Sort/SortByChapter";
import Music from "./components/Music/Music";
import LivAction from "./components/Liv_Action/LivAction";
import LivActionByName from "./components/Liv_Action/LivActionByName";
import LivActionByDir from "./components/Liv_Action/LivActionByDir";
import FilterAdaptation from "./components/Filter/FilterAdaptation";
import FilterAnime from "./components/Filter/FilterAnime";
import FilterLive from "./components/Filter/FIlterLive";
import FilterComStat from "./components/Filter/FilterComStat";
import FilterNovStat from "./components/Filter/FilterNovStat";
import FilterAniRating from "./components/Filter/FilterAniRating";
import FilterRating from "./components/Filter/FilterRating";
import FilterLiveRating from "./components/Filter/FilterLiveRating";
import Main from "./Main";
import MusicBySinger from "./components/Music/MusicBySinger";
import SortByRelease from "./components/Sort/SortByRelease";
import {useState,useEffect} from 'react'
import Header from './Header'
const App = () => {

   const [auth,setAuth] = useState(getAuth()==='true')
   
   function getAuth(){
     
    if(sessionStorage.getItem('auth')){
      return sessionStorage.getItem('auth')
    }
    else{
      sessionStorage.setItem('auth',false)
      return sessionStorage.getItem('auth')
    }

   }
   
   

   function handleAuth(a){
     sessionStorage.setItem('auth',a)
     setAuth(a)
   }

   return (
     <Router>
        <div >
          {/* {auth?<Header auth={true}/>:<Header auth={false}/>} */}
          <Routes>

            <Route path='/' element={<Main/>} />

            <Route path='/Comic' element={<Comic auth={auth}/>} />
            <Route path='/ComicByName' element={<ComicByName  auth={auth} />} />
            <Route path='/ComicByOrigin' element={<ComicByOrigin  auth={auth} />} />
            <Route path='/PostComic' element={!auth ? <Navigate to="/" /> : <PostComic  auth={auth} />} />
            
            <Route path='/Novels' element={<Novels auth={auth}/>} />
            <Route path='/NovelsByName' element={<NovelsByName  auth={auth}/>} />
            <Route path='/NovelsByOrigin' element={<NovelsByOrigin  auth={auth}/>} />
            <Route path='/PostNovel' element={!auth ? <Navigate to="/" /> : <PostNovel  auth={auth} />} />

            <Route path='/Adaptations' element={<Adaptations  auth={auth}/>} />
            <Route path='/AdaptationsByName' element={<AdaptationsByName  auth={auth}/>} />
            <Route path='/PostAdaptation' element={!auth ? <Navigate to="/" /> : <PostAdaptation  auth={auth}  />} />

            <Route path='/FilterComic' element={<FilterComic  auth={auth}/>} />
            <Route path='/FilterNovel' element={<FilterNovel  auth={auth}/>} />
            <Route path='/FilterAdaptation' element={<FilterAdaptation auth={auth} />} />
            <Route path='/FilterAnime' element={<FilterAnime  auth={auth}/>} />
            <Route path='/FilterLive' element={<FilterLive  auth={auth} />} />
            <Route path='/FilterComStat' element={<FilterComStat auth={auth} />} />
            <Route path='/FilterNovStat' element={<FilterNovStat auth={auth} />} />
            <Route path='/FilterAniRating' element={<FilterAniRating  auth={auth}/>} />
            <Route path='/FilterRating' element={<FilterRating  auth={auth}/>} />
            <Route path='/FilterLiveRating' element={<FilterLiveRating  auth={auth}/>} />

            <Route path='/Anime' element={<Anime  auth={auth}/>} />
            <Route path='/AnimeProd' element={<AnimeProd  auth={auth}/>} />

            <Route path='/Sort' element={<Sort auth={auth} />} />
            <Route path='/SortByRating' element={<SortByRating auth={auth} />} />
            <Route path='/SortByChapter' element={<SortByChapter auth={auth} />} />
            <Route path='/SortByRelease' element={<SortByRelease auth={auth} />} />

            
            <Route path='/Music' element={<Music  auth={auth}/>} />
            <Route path='/MusicBySinger' element={<MusicBySinger auth={auth} />} />

            <Route path='/LivAction' element={<LivAction  auth={auth}/>} />
            <Route path='/LivActionByName' element={<LivActionByName auth={auth} />} />
            <Route path='/LivActionByDir' element={<LivActionByDir auth={auth} />} />
            
            <Route path='/Login' element={<Login fn={handleAuth}/>} />
            {/* <Route path='/Register' element={<Register />} /> */}
          </Routes>
        </div>

     </Router>
  );
}

export default App;

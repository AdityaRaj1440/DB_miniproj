
import React from "react";
// import Sidebar2 from "./Sidebar2";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import Signin from "./Signin";
import Register from "./Register";
import Comic from "./components/Comic/Comic"
import ComicByName from "./components/Comic/ComicByName";
import ComicByOrigin from "./components/Comic/ComicByOrigin";
import Novels from "./components/Novel/Novels";
import NovelsByName from "./components/Novel/NovelsByName";
import NovelsByOrigin from "./components/Novel//NovelsByOrigin";
import Adaptations from "./components/Adaptation/Adaptations";
import AdaptationsByName from "./components/Adaptation/AdaptationsByName";
import PostAdaptation from "./components/Adaptation/PostAdaptation";
import Genres from "./components/Genre/Genres";
import FilterComics from "./components/Genre/FilterComics";
import FilterNovels from "./components/Genre/FilterNovels";
import Sort from "./components/Sort/Sort";
import PostComic from "./components/Comic/PostComic";
import PostNovel from "./components/Novel/PostNovel";
import Anime from "./components/Anime/Anime";
const App = () => {


   return (
     <Router>
        <div >
          <Routes>
            <Route path='/' element={<Comic/>} />
            <Route path='/ComicByName' element={<ComicByName />} />
            <Route path='/ComicByOrigin' element={<ComicByOrigin />} />
            <Route path='/PostComic' element={<PostComic />} />
            
            {/* <Route path='/' element={<Sidebar2  className="active" />} /> */}
            <Route path='/Novels' element={<Novels/>} />
            <Route path='/NovelsByName' element={<NovelsByName />} />
            <Route path='/NovelsByOrigin' element={<NovelsByOrigin />} />
            <Route path='/PostNovel' element={<PostNovel />} />

            <Route path='/Adaptations' element={<Adaptations />} />
            <Route path='/AdaptationsByName' element={<AdaptationsByName />} />
            <Route path='/PostAdaptation' element={<PostAdaptation />} />


            <Route path='/Genres' element={<Genres />} />
            <Route path='/FilterComics' element={<FilterComics />} />
            <Route path='/FilterNovels' element={<FilterNovels />} />

            <Route path='/Anime' element={<Anime />} />

            <Route path='/Sort' element={<Sort />} />
            
            <Route path='/Signin' element={<Signin />} />
            <Route path='/Register' element={<Register />} />
          </Routes>
        </div>

     </Router>
  );
}

export default App;

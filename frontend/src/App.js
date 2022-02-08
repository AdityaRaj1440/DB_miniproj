
import React from "react";
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
import FilterComic from "./components/Genre/FilterComic";
import FilterNovel from "./components/Genre/FilterNovel";
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
import FilterAdaptation from "./components/Genre/FilterAdaptation";
import FilterAnime from "./components/Genre/FilterAnime";
import FilterLive from "./components/Genre/FIlterLive";
import FilterComStat from "./components/Genre/FilterComStat";
import FilterNovStat from "./components/Genre/FilterNovStat";
import FilterAniRating from "./components/Genre/FilterAniRating";
import FilterRating from "./components/Genre/FilterRating";
import FilterLiveRating from "./components/Genre/FilterLiveRating";
// import Main from "./Main";
import MusicBySinger from "./components/Music/MusicBySinger";
import SortByRelease from "./components/Sort/SortByRelease";
const App = () => {


   return (
     <Router>
        <div >
          <Routes>

            {/* <Route path='/' element={<Main/>} /> */}

            <Route path='/Comic' element={<Comic/>} />
            <Route path='/ComicByName' element={<ComicByName />} />
            <Route path='/ComicByOrigin' element={<ComicByOrigin />} />
            <Route path='/PostComic' element={<PostComic />} />
            
            <Route path='/Novels' element={<Novels/>} />
            <Route path='/NovelsByName' element={<NovelsByName />} />
            <Route path='/NovelsByOrigin' element={<NovelsByOrigin />} />
            <Route path='/PostNovel' element={<PostNovel />} />

            <Route path='/Adaptations' element={<Adaptations />} />
            <Route path='/AdaptationsByName' element={<AdaptationsByName />} />
            <Route path='/PostAdaptation' element={<PostAdaptation />} />

            <Route path='/FilterComic' element={<FilterComic />} />
            <Route path='/FilterNovel' element={<FilterNovel />} />
            <Route path='/FilterAdaptation' element={<FilterAdaptation />} />
            <Route path='/FilterAnime' element={<FilterAnime />} />
            <Route path='/FilterLive' element={<FilterLive />} />
            <Route path='/FilterComStat' element={<FilterComStat />} />
            <Route path='/FilterNovStat' element={<FilterNovStat />} />
            <Route path='/FilterAniRating' element={<FilterAniRating />} />
            <Route path='/FilterRating' element={<FilterRating />} />
            <Route path='/FilterLiveRating' element={<FilterLiveRating />} />

            <Route path='/Anime' element={<Anime />} />
            <Route path='/AnimeProd' element={<AnimeProd />} />

            <Route path='/Sort' element={<Sort />} />
            <Route path='/SortByRating' element={<SortByRating />} />
            <Route path='/SortByChapter' element={<SortByChapter />} />
            <Route path='/SortByRelease' element={<SortByRelease />} />

            
            <Route path='/Music' element={<Music />} />
            <Route path='/MusicBySinger' element={<MusicBySinger />} />

            <Route path='/LivAction' element={<LivAction />} />
            <Route path='/LivActionByName' element={<LivActionByName />} />
            <Route path='/LivActionByDir' element={<LivActionByDir />} />
            
            <Route path='/Signin' element={<Signin />} />
            <Route path='/Register' element={<Register />} />
          </Routes>
        </div>

     </Router>
  );
}

export default App;


const Menu = () => {

    return(
        <div  className="w3-sidebar sidenav  w3-light-grey w3-bar-block " >
            <div className="mb4 ml3 i ">
                <h3 className="heading-name">
                    ANIME EXPLORER
                </h3>
            </div>
                <h3 className="w3-bar-item active" >MENU</h3>
            <div className="boundary-menu">
                
                <div className="w3-dropdown-hover">
                    <div className="w3-bar-item comic1 ">
                       <center> <a href="/Comic" className="w3-bar-item w3-button-c  ">COMICS</a>    
                        <i className="fa fa-caret-down"></i>
                   </center> </div>
                    <div className="w3-dropdown-content w3-bar-block comic2">
                        <a href="/ComicByName" className="w3-bar-item w3-button-c">GET BY NAME</a>
                        <a href="/ComicByOrigin" className="w3-bar-item w3-button-c">GET BY ORIGIN</a>
                        <a href="/PostComic" className="w3-bar-item w3-button-c">POST COMIC</a>
                    </div>
                </div><hr/>


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item novel1">
                        <a href="/Novels" className="w3-bar-item w3-button-n " >NOVELS</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                    <div className="w3-dropdown-content w3-bar-block novel2">
                        <a href="/NovelsByName" className="w3-bar-item w3-button-n">GET BY NAME</a>
                        <a href="/NovelsByOrigin" className="w3-bar-item w3-button-n">GET BY ORIGIN</a>
                        <a href="/PostNovel" className="w3-bar-item w3-button-n">POST NOVEL</a>
                    </div>
                </div><hr/>


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item genre1">
                        <a href="/FilterComic" className="w3-bar-item w3-button-g " >FILTER</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                    <div className="w3-dropdown-content w3-bar-block genre2">
                        <a href="/FilterNovel" className="w3-bar-item w3-button-g">FILTER NOVELS</a>
                        <a href="/FilterAdaptation" className="w3-bar-item w3-button-g">FILTER ADAPTATION</a>
                        <a href="/FilterAnime" className="w3-bar-item w3-button-g">FILTER ANIME</a>
                        <a href="/FilterLive" className="w3-bar-item w3-button-g">FILTER LIVE ACTION</a>
                        <a href="/FilterComStat" className="w3-bar-item w3-button-g">COMICS FILTER BY STATUS</a>
                        <a href="/FilterNovStat" className="w3-bar-item w3-button-g">NOVELS FILTER BY STATUS</a>
                        <a href="/FilterAniRating" className="w3-bar-item w3-button-g">ANIME FILTER BY RATING</a>
                        <a href="/FilterLiveRating" className="w3-bar-item w3-button-g">LIVE ACTION FILTER BY RATING</a>
                        <a href="/FilterRating" className="w3-bar-item w3-button-g">FILTER BY RATING</a>


                    </div>
                </div><hr/>


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item adapt1">
                        <a href="/Adaptations" className="w3-bar-item w3-button-ad" >ADAPTATIONS</a> 
                        <i className="fa fa-caret-down"></i>
                    </button>
                    <div className="w3-dropdown-content w3-bar-block adapt2">
                        <a href="/AdaptationsByName" className="w3-bar-item w3-button-ad">BY EXACT NAME</a>
                        <a href="/PostAdaptation" className="w3-bar-item w3-button-ad">POST ADAPTATIONS</a>
                    </div>
                </div><hr/>


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item anime1">
                        <a href="/Anime" className="w3-bar-item w3-button-an" >ANIME</a> 
                        <i className="fa fa-caret-down"></i>
                    </button>
                    <div className="w3-dropdown-content w3-bar-block anime2">
                        <a href="/AnimeProd" className="w3-bar-item w3-button-an">BY PRODUCTION</a>
                    </div>
                </div><hr/>


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item sort1">
                        <a href="/Sort" className="w3-bar-item w3-button-s " >SORT</a> 
                        <i className="fa fa-caret-down"></i>
                    </button>
                    <div className="w3-dropdown-content w3-bar-block sort2">
                        <a href="/SortByRating" className="w3-bar-item w3-button-s">BY RATING</a>
                        <a href="/SortByChapter" className="w3-bar-item w3-button-s">BY CHAPTER</a>
                        <a href="/SortByRelease" className="w3-bar-item w3-button-s">BY RELEASE DATE</a>
                    </div>
                </div><hr/> 


                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item music1">
                        <a href="/Music" className="w3-bar-item w3-button-m " >MUSIC</a> 
                        <i className="fa fa-caret-down"></i>
                    </button>
                    <div className="w3-dropdown-content w3-bar-block music2">
                        <a href="/MusicBySinger" className="w3-bar-item w3-button-m">BY SINGER</a>
                    </div>
                </div><hr/>  

                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item action1">
                        <a href="/LivAction" className="w3-bar-item w3-button-l " >LIV ACTION</a> 
                        <i className="fa fa-caret-down"></i>
                    </button>
                    <div className="w3-dropdown-content w3-bar-block action2">
                        <a href="/LivActionByName" className="w3-bar-item w3-button-l">BY EXACT NAME</a>
                        <a href="/LivActionByDir" className="w3-bar-item w3-button-l">BY DIRECTOR</a>

                    </div>
                </div><hr/>  

                {/* <div className="w3-dropdown-hover">
                    <button className="w3-button">Dropdown <i className="fa fa-caret-down"></i></button>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/" className="w3-bar-item w3-button">Link</a>
                        <a href="/" className="w3-bar-item w3-button">Link</a>
                    </div>
                </div> */}
            </div>
        </div>

    )
}


export default Menu
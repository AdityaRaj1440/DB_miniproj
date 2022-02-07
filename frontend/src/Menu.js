
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
                {/* <a href="/" className="w3-bar-item w3-button ">COMICS</a><hr /> */}
                
                <div className="w3-dropdown-hover">
                    <div className="w3-bar-item">
                        <a href="/" className="w3-bar-item w3-button ">COMICS</a>    
                        <i className="fa fa-caret-down"></i>
                    </div>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/ComicByName" className="w3-bar-item w3-button">GET BY NAME</a>
                        <a href="/ComicByOrigin" className="w3-bar-item w3-button">GET BY ORIGIN</a>
                        <a href="/PostComic" className="w3-bar-item w3-button">POST COMIC</a>
                    </div>
                </div><hr/>

                {/* <a href="/Novels" className="w3-bar-item w3-button " >NOVELS</a><hr /> */}
                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item">
                        <a href="/Novels" className="w3-bar-item w3-button " >NOVELS</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/NovelsByName" className="w3-bar-item w3-button">GET BY NAME</a>
                        <a href="/NovelsByOrigin" className="w3-bar-item w3-button">GET BY ORIGIN</a>
                        <a href="/PostNovel" className="w3-bar-item w3-button">POST NOVEL</a>
                    </div>
                </div><hr/>



                {/* <a href="/Genres" className="w3-bar-item w3-button ">GENRES</a><hr /> */}
                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item">
                        <a href="/Genres" className="w3-bar-item w3-button " >GENRES</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/FilterNovels" className="w3-bar-item w3-button">FILTER NOVEL</a>
                        <a href="/FilterComics" className="w3-bar-item w3-button">FILTER COMIC</a>
                    </div>
                </div><hr/>



                {/* <a href="/Adaptations" className="w3-bar-item w3-button">ADAPTATIONS</a><hr /> */}

                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item">
                        <a href="/Adaptations" className="w3-bar-item w3-button" >ADAPTATIONS</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                    <div className="w3-dropdown-content w3-bar-block">
                        <a href="/AdaptationsByName" className="w3-bar-item w3-button">BY NAME</a>
                        <a href="/PostAdaptation" className="w3-bar-item w3-button">POST ADAPTATIONS</a>
                    </div>
                </div><hr/>

                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item">
                        <a href="/Anime" className="w3-bar-item w3-button" >ANIME</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
                </div><hr/>

                {/* <a href="/Sort" className="w3-bar-item  w3-button"><div className="tc">SORT</div></a><hr /> */}
                <div className="w3-dropdown-hover">
                    <button className="w3-bar-item">
                        <a href="/Sort" className="w3-bar-item w3-button " >SORT</a> 
                        <i className="fa fa-caret-down"></i>
                        </button>
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
import { Link } from "react-router-dom"

function Wallpapers() {
    return (
      <div >
                          <header className='header'>
                    <nav>
                        <p  className = 'f3 black pa4'>My Heading</p>
                    </nav>

                    <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <p  className = 'f3 link dim underline black pa4 pointer'>
                    <Link to={"/"}> Sign Out</Link>
                    </p>

                    </nav>

                </header>
          <h1>Wallpapers Page</h1>        
      </div>
  
      );
  }
  
  export default Wallpapers;
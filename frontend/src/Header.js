import { Link } from "react-router-dom"
import Box from "./Box"


const Header = () => {
    return(
        <div>
            <div>
                <header className='header'>
                    <nav>
                        <p  className = 'f3 black pa4'>My Heading</p>
                    </nav>

                    <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <p  className = 'f3 link dim underline black pa4 pointer'>
                    <Link to={"/signin"}> Sign in </Link>
                    </p>

                    <p className = 'f3 link dim underline black pa4 pointer'>
                    <Link to={"/register"}> Register </Link>
                    </p>
                    </nav>

                </header> 
            </div>
            
            <div className="box">
                <Box title='Anime'/>
                <Box title='Comic'/>
                <Box title='Novel'/> 

                <Box title='Music'/>
                <Box title='Community'/>
                <Box title='Wallpapers'/>
                
            </div>
        </div>
    )
}


export default Header
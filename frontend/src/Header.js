
const Header = () => {
    return(
        <div>
            <header className='header'>
                <nav>
                    <p  className = 'f3  pa4 pointer'>My Heading</p>
                </nav>
                <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <p className = 'f3 link dim underline black pa4 pointer'>
                        Signup
                    </p>
                    <p className = 'f3 link dim underline black pa4 pointer'>
                        Login
                    </p>
                </nav>
            </header>
                


            <div style={{width:'180px'}}  className="w3-sidebar w3-light-grey w3-bar-block " >
                
                <h3 class="w3-bar-item" >Menu</h3>
                <a href="/" class="w3-bar-item w3-button">Link 1</a>
                <a href="/" class="w3-bar-item w3-button">Link 2</a>
                <a href="/" class="w3-bar-item w3-button">Link 3</a>
                <a href="/" class="w3-bar-item w3-button">Link 4</a>
                <a href="/" class="w3-bar-item w3-button">Link 5</a>
                <a href="/" class="w3-bar-item w3-button">Link 6</a>
                <a href="/" class="w3-bar-item w3-button">Link 7</a>
                <div class="w3-dropdown-hover">
                    <button class="w3-button">Dropdown <i class="fa fa-caret-down"></i></button>
                    <div class="w3-dropdown-content w3-bar-block">
                        <a href="/" class="w3-bar-item w3-button">Link</a>
                        <a href="/" class="w3-bar-item w3-button">Link</a>
                    </div>
                </div>
            </div>
    
            <div>
                <div class="w3-container" style={{marginLeft:'14rem'}}>
                    <h2>Form</h2>
                    <p>Nam consectetur, mauris non bibendum efficitur, purus mauris elementum purus, ut placerat nibh massa vitae ligula. Suspendisse potenti. Donec a ultrices metus.</p>
                    <p>Curabitur eu leo volutpat, elementum nibh id, faucibus diam. Sed quis sapien sapien. Quisque scelerisque sollicitudin est et mollis. Cras eget finibus nunc.</p>
                <form class=" w3-margin pa1">
                Variables
                <div>
                    <label className="ma3">label1</label>
                    <input type="name"
                     placeholder=''
                    />
                </div>
                Path Params
                <div>
                <label className="ma3" >label2</label>
                    <input type="name" 
                    placeholder=''
                     />
                </div>
                Query String
                <div>
                <label className="ma3">label3</label>
                    <input type="name" 
                    placeholder=''
                    />
                </div>
                <div class="w3-margin">
                {/* <input className="pa2 w3-margin" type="submit" value="Send"/>
                 */}
                 <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                </div>        
            </form>    
                </div>
            </div>

        </div>
    )
}


export default Header
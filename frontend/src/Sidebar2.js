
const Sidebar2 = () => {
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

                <div className="sidebar">
                    <h3 className="w3-bar-item" >Menu</h3>
                    <a className="active w3-bar-item w3-button" href="/">Home</a>
                    <a href="/" className="w3-bar-item w3-button">Link 1</a>
                    <a href="/" className="w3-bar-item w3-button">Link2</a>
                    <a href="/" className="w3-bar-item w3-button">Link3</a>
                    <a href="/" className="w3-bar-item w3-button">Link4</a>
                    <a href="/" className="w3-bar-item w3-button">Link 5</a>
                    <a href="/" >Link 6</a>
                </div>
                <div>
                    <div className="content w3-container" style={{marginLeft:'14rem'}}>
                            <h2>Form</h2>
                                <p>Nam consectetur, mauris non bibendum efficitur, purus mauris elementum purus, ut placerat nibh massa vitae ligula. Suspendisse potenti. Donec a ultrices metus.</p>
                                <p>Curabitur eu leo volutpat, elementum nibh id, faucibus diam. Sed quis sapien sapien. Quisque scelerisque sollicitudin est et mollis. Cras eget finibus nunc.</p>
                            <form className=" w3-margin pa1">
                            Variables
                            <div>
                                <label className="ma3">API KEY</label>
                                <input type="name"
                                placeholder=''
                                />
                            </div>
                            Path Params
                            <div>
                            <label className="ma3" >MOVIE_ID</label>
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
                            <div className="w3-margin">
                            {/* <input classNameName="pa2 w3-margin" type="submit" value="Send"/>
                            */}
                            <button type="submit" className="btn-  pa3 w3-round-xlarge " style={{width:'80px'}}>Send</button>
                            </div>        
                        </form>
                    </div>
                 </div>
                
        </div>
    )
}

export default Sidebar2
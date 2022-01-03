
const Sidebar2 = () => {
    return(
        <div>
                <div class="sidebar">
                    <h3 class="w3-bar-item" >Menu</h3>
                    <a class="active w3-bar-item w3-button" href="/">Home</a>
                    <a href="/" class="w3-bar-item w3-button">Link 1</a>
                    <a href="/" class="w3-bar-item w3-button">Link2</a>
                    <a href="/" class="w3-bar-item w3-button">Link3</a>
                    <a href="/" class="w3-bar-item w3-button">Link4</a>
                    <a href="/" class="w3-bar-item w3-button">Link 5</a>
                    <a href="/" >Link 6</a>
                </div>
                <div>
                    <div class="content w3-container" style={{marginLeft:'14rem'}}>
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

export default Sidebar2
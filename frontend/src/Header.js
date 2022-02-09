

let adminstatus = true
const Header = () => {
    return(

            <header className="header">  
                
                <div className="header-image">


                    
                    {
                        adminstatus 
                        ?
                        <div className="d-grid gap-2 d-md-flex justify-content-md-end">
                        <a href='/'><button className="btn btn-primary login" type="button">LOGOUT</button></a>
                        </div> 
                        :
                        <div className="d-grid gap-2 d-md-flex justify-content-md-end">
                        <a href='/'><button className="btn btn-primary login" type="button">HOME PAGE</button></a>
                        </div> 
                    }
                        


                

                </div>
                {/* <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                    <div className="header-img">
                        <div>
                        <img src= {require("./1.jpg") }
                            alt="header-img" />   

                        </div>
                    </div>
                </nav> */}
 
                    {/* <p className = 'f3 link dim underline black pa4 pointer'>
                        Signup
                    </p> */}
                    {/* <nav style = {{display : 'flex', justifyContent : 'flex-end'}}>
                        
                    </nav>  */}
            </header>
    )
}

export default Header
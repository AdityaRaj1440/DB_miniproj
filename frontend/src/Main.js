import Card from "./Card";
const Main = () => {


  return (
  <div>
    <div className="w3-top">
      <div className="w3-bar w3-red w3-card w3-left-align w3-large">
        <a href="/" className="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
        <a href="/Login" className="w3-bar-item w3-button w3-padding-large w3-hover-white">ADMIN LOGIN</a>
      </div>
    </div>


    {/* <!-- Header --> */}
    <center>
      <header className="w3-container w3-red" >
        <h1 className="w3-margin w3-jumbo start" > YOKOSO !! </h1>
        <a href='/Comic' style={{textDecoration:"none" }}><button className="w3-button w3-black w3-padding-large  w3-large w3-margin-top getstart">Get Started</button></a>
      </header>
      {/* READY TO EXPLORE */}
    </center>


    {/* <!-- First Grid --> */}
    <div className="w3-padding  w3-khaki w3-container">
      <div className="pt2 pb4">
        <div className="pb2">
          <center>
            <div className=" w3-center">
              <h2>ANIME</h2>
            </div>
          </center>
        </div>
          <Card Type={'Anime'} name={'naruto'}/>
          <Card Type={'Anime'} name={'Bleach'}/>
          <Card Type={'Anime'} name={'Fullmetal Alchemist'}/>
          <Card Type={'Anime'} name={'Claymore'}/>
          <Card Type={'Anime'} name={'Jujutsu Kaisen'}/>
          <Card Type={'Anime'} name={'Death Note'}/>
          <Card Type={'Anime'} name={'Steins:Gate'}/>
          <Card Type={'Anime'} name={'Hunter X Hunter'}/>
      </div>
    </div>


    {/* <!-- Second Grid --> */}
      <div className=" w3-padding w3-light-grey  w3-container">
        <div className="pt2 pb4">
          <div className="pb2 ">
            <center>
              <div className=" w3-center">
                <h2>NOVELS</h2>
              </div>
            </center>
          </div>
            <Card Type={'Novels'} name={"Omniscient Reader's Viewpoint"}/>
            <Card Type={'Novels'} name={'Only I Level Up Alone'}/>
            <Card Type={'Novels'} name={'A Game to Make Him Fall'}/>
            <Card Type={'Novels'} name={'Embers ad Infinitum'}/>
            <Card Type={'Novels'} name={'Sevens'}/>
            <Card Type={'Novels'} name={'Martial Peak'}/>
            <Card Type={'Novels'} name={ "Chaotic Sword God"}/>
            {/* <Card Type={'Novels'} name={'Let Me Game in Peace'}/> */}
            {/* <Card Type={'Novels'} name={"Godly Model Creator "}/> */}
        </div>
      </div>


    {/* <!-- Third Grid --> */}
        <div className=" w3-padding w3-light-green w3-container">
          <div className="pt2 pb4">
            <div className="pb2">
              <center>
                <div className=" w3-center">
                  <h2>MUSIC</h2>
                </div>
              </center>
            </div>
              {/* <Card Type={'Music'} name={"SAITAMA SONG- All it takes"}/>
              <Card Type={'Music'} name={'Todoroki Rap- Frostbite'}/>
              <Card Type={'Music'} name={'Gojo Rap- Running in Blind'}/>
              <Card Type={'Music'} name={'Eren Jaeger Rap- Titans'}/>
              <Card Type={'Music'} name={'Uchiha Rap Cypher'}/>
              <Card Type={'Music'} name={'Gon Rap- Forgive Me'}/>
              <Card Type={'Music'} name={ "Jin Mori Rap- The God of High School"}/>
              <Card Type={'Music'} name={ "LUFFY, ZORO & SANJI RAP- Monster Trio"}/> */}
          </div>
        </div>


        <div className="w3-container w3-black w3-center w3-opacity w3-padding-large">
            <h1 className="w3-margin w3-xlarge">Quote of the day:  GO BEYOND! PLUS ULTRA!    </h1>
        </div>


      {/* <!-- Footer --> */}
      <footer className="w3-container w3-center w3-opacity">  
        <div className="w3-xlarge w3-padding">
          <h3>Made by Geeky guys --{'>'}  HARSHIT & ADITYA </h3>
        </div>
      </footer>

    </div>
  )
}

export default Main;

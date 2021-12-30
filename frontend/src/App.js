import Header  from "./Header";
import { BrowserRouter as Router, Routes, Route} from "react-router-dom"
import Signin from './Signin'
import Register from './Register'
import Anime from './Anime'
import Comic from './Comic'
import Community from './Community'
import Music from './Music'
import Wallpapers from './Wallpapers'
import Novel from './Novel'


function App() {
  return (
      <Router>
        <div >
              <Routes>
                <Route path='/' element={<Header/>}  />
                <Route path="/signin" element={<Signin />} />
                <Route path="/register" element={<Register />} />
                <Route path="/anime" element={<Anime />} />
                <Route path="/comic" element={<Comic />} />
                <Route path="/community" element={<Community />} />
                <Route path="/music" element={<Music />} />
                <Route path="/novel" element={<Novel />} />
                <Route path="/wallpapers" element={<Wallpapers />} />
             </Routes>
        </div>
      </Router>


  );
}

export default App;

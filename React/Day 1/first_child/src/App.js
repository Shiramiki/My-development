
import './App.css';
import React, { Component } from 'react'
import Greet from './components/greet'
import Welcome from './components/Welcome'
class App extends Component {
  render(){
    return (
      <div className="App">
        <Greet></Greet>
        <Welcome></Welcome>
      </div>
    );
  }
}

// function App() {
//   return (
//     <div className="App">
//       <Greet></Greet>
//     </div>
//   );
// }


export default App;

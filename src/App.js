import React, {useEffect, useState} from 'react';
import Home from './Home'
import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import './App.css';
import RequestPage from './RequestPage';
import UserItemPage from './UserItemPage';


function App() {

  const [userItems, setUserItems] = useState({})
  const [showClickedItem, setShowClickedItem] = useState({})

  console.log(showClickedItem)

      useEffect(() => {
      fetch('http://localhost:9292/users')
          .then(res => res.json())
          .then(data => setUserItems(data))
  }, [])


  return (
    <>
    <Router>
    <Routes>

      <Route path='/' element={<Home showClickedItem={showClickedItem} setShowClickedItem={setShowClickedItem}/>}/>
   
      <Route exact path="/request" element={<RequestPage userItems={userItems} showClickedItem={showClickedItem} setShowClickedItem={setShowClickedItem}/>}/>

      <Route exact path ="useritempage" element={<UserItemPage userItems={userItems}/>}/>
    
    </Routes>
    </Router>

    </>
  )
}

export default App;


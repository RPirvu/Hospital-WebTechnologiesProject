import React, {useState} from 'react';
import display from './components/display';
import About from'./About/about';
import Home from './Home/home';
import Post from './Post/post';
import Dashboard from './Dashboard/dashboard';
import PrivateRoute from './components/PrivateRoute';
import 'bootstrap/dist/css/bootstrap.min.css';

import {BrowserRouter, Route, Switch, Link} from 'react-router-dom';
 

function App() {

  const [auth, setAuth] = useState(false);

  return (
    <BrowserRouter>
      <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
        <div className="container">
          
          <ul className='navbar-nav'>
            <li className='nav-item'>
              <Link className='nav-link' to="/">Home</Link>
            </li>
            <li className='nav-item'>
              <Link className='nav-link' to="/about">About</Link>
            </li>
            <li className='nav-item'>
              <Link className='nav-link' to="/post">Post</Link>
            </li>
            <li className='nav-item'>
              <Link className='nav-link' to="/dashboard" style={display(auth)}>Dashboard</Link>
            </li>
            
          </ul>
          <Link className="navbar-brand"></Link>
        </div>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style={display(!auth)}
            onClick={ () => setAuth(true)}
          >Login</button>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style={display(auth)}
            onClick={ () => setAuth(false)}
          >Logout</button>
      </nav>
      <div></div>
      <Switch>
        <Route exact path="/" component={Home}/>
        <Route exact path="/about" component={About}/>
        <Route exact path="/post" component={Post}/>
        <PrivateRoute exact path = "/dashboard" component={Dashboard} auth={auth}/>
        <Route path="*" component={() => "404 NOT FOUND"} />
        
      </Switch>
    </BrowserRouter>
  );
}

export default App;

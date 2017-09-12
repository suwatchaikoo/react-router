import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Switch, Route, NavLink } from 'react-router-dom';
import { Input ,Output} from './components';
import {queryString} from 'query-string';

class App extends Component {
  render() {
    return (
      <BrowserRouter>

      <div className="App">

        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <div>
          <ul>
            <li><NavLink to="/" activeClassName="active"><h2><font color="#FFFF33">ใส่ข้อมูล</font></h2> </NavLink></li>
            <li></li>
          </ul></div>
        </div>
        <div className="App-intro">
          <Switch>
              <Route path="/" component={Input} exact={true} />
              <Route path="/level1/:value" component={Output} exact={true} />
          </Switch>
        </div>
        
      </div>
      </BrowserRouter>
    );
  }
}

export default App;

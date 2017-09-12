import React from 'react';
import {  NavLink } from 'react-router-dom';
class Input extends React.Component {
	  constructor() {
    super();
    this.state = { user: "" };

  }

    setAge(e){
    var age = e.target.value;
    this.setState({user:age});
    }
  
    render(){
        return (
            <div>
        <input type="text" onChange={this.setAge.bind(this)} placeholder="กุรณากรอกข้อมูล" ref="name"/>
        <button><NavLink to={{pathname:"/level1/"+this.state.user}} activeClassName="active">ส่งข้อมูล</NavLink></button>
      
            </div>
        );
    }
}

export default Input;
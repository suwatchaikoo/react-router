import React from 'react';

class Output extends React.Component {
	
	constructor(){
    super();
    
    // console.log(this.props.match.params.value);
    
  	}
    render(){
    	// console.log(this.search.get("id"));
        const location = this.props.location;
    	const params = this.props.match.params;
        return (
            <div>
                <h1><font color="Black">แสดงข้อมูล</font></h1>
                <h2><font color="red">{params.value}</font></h2>
                
            </div>
        );
    }
}

export default Output;
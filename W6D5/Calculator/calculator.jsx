import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result:0, num1:"", num2:""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
  }

  //your code here

  render(){
    return (
      <div>
        <h1>Hello World</h1>
         // Greetings <br />
         // Calculator here
        <h1>{this.state.result}</h1>
      </div>
    );
  }

  setNum1(e) {
    this.setNum1
  }

  setNum2(e) {

  }
}

export default Calculator;

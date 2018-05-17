function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// > mysteryScoping1()
// in block
// in block
// undefined
// --------------------------
// var x can be modified within a function regardless of scope


function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// > mysteryScoping2()
// in block
// out of block
// undefined
// -------------------------------
// const x are defined within their own scope and are immutable


function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// > mysteryScoping3()
// SyntaxError: Identifier 'x' has already been declared
// -------------------------------
// const x is defined outside the block and is immutable (because of 'const')
// syntax error is due to trying to define x again (as either const or var)


function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// > mysteryScoping4()
// in block
// out of block
// undefined
// -------------------------------
// let x is defined within their own scope



function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again'; // << declared again
  console.log(x);
}

// > mysteryScoping5()
// SyntaxError: Identifier 'x' has already been declared
// -------------------------------
// let x is defined within their own scope, but can't be declared again within the same scope

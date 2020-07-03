// Let and Const provide block scope variables

// Global variables can be accessed from anywhere in a JavaScript program.

// Variables declared Locally (inside a function) have Function Scope.

// Variables declared with the var keyword CANNOT have Block Scope.




// Variables declared with the let keyword can have Block Scope.
// Variables declared inside a block {} cannot be accessed from outside the block:

{
    let x = 2;
  }
  // x can NOT be used here


  // minimize redeclaring varaible



  //USE const if using a variable that does not change
  const pi = 3.14
  //HOWEVER const obj properties can be changed
  //You cannot reassign a variable
  const obj = {
      player: 'wizard',
      experience: 50,
      clan: 'green',
      active: true
  }

  //Use let if a variable is going to change
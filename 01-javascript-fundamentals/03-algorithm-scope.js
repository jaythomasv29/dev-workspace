//Scope determines what variables you can access

//Global Scope - Any variable that is outside of the function and can be accessed anywhere
var globalVar = 'Hello, this is a global string'


//Local Scope - Any variable that is inside of the function, and can be accessed anywhere in the function
function localScopeFunc() {
    var age = 28;
}



// Block Scope
const result = 'I am the global scope'
if(true){
    let result = 'I am in the block scope. '
    console.log(result)
}
console.log(result) 



// Let vs const vs var
//Rule: Whenever you have a chance to use const. Use const. Whenever you have to...use let
let result = 'good'
const things = 'hi' //A constant that cannot be re assigned, but can be reassigned properties in objects


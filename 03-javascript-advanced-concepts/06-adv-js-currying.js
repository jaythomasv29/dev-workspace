/* Currying is the process of taking a function with multiple arguments 
and returning a series of functions that take one argument 
and eventually resolve to a value.
*/
const multiply = (a, b) => a * b


const curriedMultiply = (a) => (b) => a * b // a function that accepts a parameter 
//and THEN returns a function that accepts another parameter
curriedMultiply(3)(5) // 15
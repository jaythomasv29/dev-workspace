// Write a function 'transformArrayToObject' 
// which takes in an array of arrays, 
// and returns an object with each pair of elements in the array as a key-value pair.

// function input
var input = [['make', 'Ford'], ['model', 'Mustang'], ['year', 1964]];


// function output should look like this
// {
//     make : 'Ford',
//     model : 'Mustang',
//     year : 1964
//   }

function transformArrayToObject(array) {
    // your code here
    const obj = Object.fromEntries(array)
    return obj
  }

  transformArrayToObject([['make', 'Ford'], ['model', 'Mustang'], ['year', 1964]])

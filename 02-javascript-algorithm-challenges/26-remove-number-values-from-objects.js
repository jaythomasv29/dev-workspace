// Write a function called "removeNumberValues".

// Given an object, "removeNumberValues" removes any 
// properties whose values are numbers.

var obj = {
    a: 2,
    b: 'remaining',
    c: 4
  };
//   typeof obj.a == 'number'
//   typeof obj.b == 'string'

function removeNumberValues(obj) {
    // your code here   
    for(o in obj){
        // NOT NOT A NUMBER == NUMBER
        if(!isNaN(obj[o])) { // delete these values that are Numbers
            delete obj[o]
        } 
    }
    return obj
  }
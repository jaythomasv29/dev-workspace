// Write a function called "removeArrayValues".

// Given an object, "removeArrayValues" removes any properties whose values are arrays.

// var obj = {

//Object 6

function removeArrayValues(obj) {
    // your code here
    for (o in obj){
        if(Array.isArray(obj[o])){
            console.log(`${obj[o]} is an array`)
            delete obj[o]
        }
    }
    return obj
  }
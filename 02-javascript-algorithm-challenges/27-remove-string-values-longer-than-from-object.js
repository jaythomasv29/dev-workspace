// Write a function called "removeStringValuesLongerThan".

//Given an number and an object, "removeStringValuesLongerThan" 
//removes any properties on the given object whose 
//values are strings longer than the given number.

function removeStringValuesLongerThan(num, obj) {
    // your code here
    for (key in obj){
        if(typeof obj[key] == 'string' && obj[key].length > num){
        delete obj[key]
        }
    }
    return obj
  }
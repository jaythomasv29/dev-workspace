var arr = ['a', 'c', 'e'];
var obj = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
};


// obj[arr[0]]
function select(arr, obj) {
    // your code here
    const object = {}
    for(ele of arr){//loop through array
        for(key in obj){ //loop through object
            if(obj[ele] != undefined){ //if old obj has same key as array
                object[ele] = obj[ele]  // set new object properties to the current obj[ele] that matches with array element as the key
            }
        }
    }
    return object
  }


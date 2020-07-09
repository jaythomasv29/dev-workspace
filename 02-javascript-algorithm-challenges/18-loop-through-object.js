// Loop through the object to get its KEYS


function getAllKeys(obj) {
    // your code here
    const keys = []
    for (i in obj){keys.push(i)}
    return keys
  }
  var input = {
    name : 'Sam',
    age : 25,
    hasPets : true
  };

  getAllKeys(input)

  // Loop through the object to get its VALUES

  for(i in input){console.log(input[i])}
function listAllValues(obj) {
  // your code here
  const values = []
  for(o in obj){values.push(obj[o])}
  return values
}
/*
Object.values
Object.entries
Object.keys
*/

const obj = {
    sex: [0, 2],
    age: [2, 9],
}
const objChecker = (obj) => {
    if (Number())
        const totalSum = Object.values(obj).flat().reduce((a, acc) => {
            return acc + a
        }, 0)
    return totalSum

}
Object.keys(obj)
Object.entries(obj)

/**
 *  
  // var obj = {
//     key: [4, 1, 8]
//   };
//   var output = getSumOfAllElementsAtProperty(obj, 'key');
//   console.log(output); // --> 13
 */



function getSumOfAllElementsAtProperty(obj, key) {
    // your code here
    if (!(Array.isArray(obj[key])) || obj[key] === undefined) {
        return 0

    } else if((Array.isArray(obj[key])) && obj[key].length == 0 ){
        return 0
    } else {
        let totalSum = obj[key].reduce((a, acc) => {
            return a + acc
        }, 0)
        return totalSum
    }
  }
var obj = {
    key: [4, 1, 8],
    dino: 'help'
};
var output2 = getSumOfAllElementsAtProperty(obj, 'dog');
var output = getSumOfAllElementsAtProperty(obj, 'key');
console.log(output, output2); // --> 13
// Problem 1
// Given a list of non-negative integers and a target sum, find a pair of numbers that sums to the target sum.

// function findPairForSum(integers, target) {
//   // your solution here
// }

// // example
// var pair = findPairForSum([3, 34, 4, 12, 5, 2], 9);
// console.log(pair); // --> [4, 5]

function findPairForSum(integers, target) {
    //solution here
    let pair = []
    for (i of integers) {
        let perfectPair = target - i
        if (integers.includes(perfectPair)) {
            pair.push([perfectPair, i])
            pair.splice(integers.indexOf(perfectPair), 1)
        }
    }
    if (pair.length == 0) {
        return -1
    } else if(pair.length == 1){
        return pair.flat()
    } else {
        console.log(`More than one pair exist`)
        pair.forEach(p => console.log(p))
        return pair
    }

}
var pair = findPairForSum([3, 34, 4, 6, 12, 5, 2], 9);
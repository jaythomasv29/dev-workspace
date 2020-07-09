
// Problem 1
// Given a list of non-negative integers and a target sum, find a pair of numbers that sums to the target sum.

// function findPairForSum(integers, target) {
//   // your solution here
// }

// // example
// var pair = findPairForSum([3, 34, 4, 12, 5, 2], 9);
// console.log(pair); // --> [4, 5]

function findPairForSum(integers, target){
    //solution here
    let pair = []
for(i of integers){
    let perfectPair = target - i
    if (integers.includes(perfectPair)){
        pair.push(perfectPair)
    } 
}
return pair
}
var pair = findPairForSum([3, 34, 4, 12, 5, 2], 30);



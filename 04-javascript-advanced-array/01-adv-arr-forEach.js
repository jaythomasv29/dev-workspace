const arr = [1,2,10,20]

const doubled = []

arr.forEach((num) => {
    doubled.push(num * 2)
})
/*

ADVANCED ARRAY METHODS

*/

// MAP : .map() method loops over each element and returns a new array
const mapArray = arr.map((num) => {
    return num * 2
})



// FILTER
const filterArray = arr.filter(num => num > 5)


//REDUCE
const reduceArray = arr.reduce((accu, num) => {
    //in reduce, the second parameter after the function is a default value
    return accu + num
}, 0)

//write a function that takes in an array and gets the summ
const sumofArr = (arr) => {
    const total = arr.reduce((accumulator, num) => {
        return accumulator + num
    },0)
    return total
}

sumofArr([1,2,3])
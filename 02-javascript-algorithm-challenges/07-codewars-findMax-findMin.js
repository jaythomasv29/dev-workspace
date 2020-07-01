/*

//FIND MAX METHOD

// max < arr[i]

*/
// Write a function that takes in an array of numbers and returns the smallest num
const findMin = (arr)=> {
    let min = arr[0]
    for (let i = 0; i <arr.length; i++){
        if(min > arr[i]){ // Everytime min finds a new LOWER number
            min = arr[i] // Re assign the variable
        }
    }
    return min
}
/*

//FIND MAX METHOD

// max < arr[i]

*/

// Write a function that takes in an array of numbers and returns the largest num
const findMax = (arr)=> {
    let max = arr[0]
    for (let i = 0; i <arr.length; i++){
        if(max < arr[i]){ // Everytime max finds a new HIGHER number
            max = arr[i] // Re assign the variable
        }
    }
    return max //return
}

findMax([0,-11,30,2, 99]) //99
findMin([0,-11,30,2,-32]) //-32 

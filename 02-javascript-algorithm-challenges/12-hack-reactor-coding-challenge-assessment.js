// Enter your code here
const myArray = [] // declare empty array
myArray.push(`James Vongampai`, `Grey`) // push to array

//cutName function to return an array of string broken up.
const cutName = (name => name.split(" "));  // split. at the space based on RegEx

let myInfo = {}  // declare empty object
myInfo = {// assign to object
    fullName:cutName(`${myArray[0]}`),  //reference back to the original array, or you can call the function with a string
    favoriteColor:myArray[1],
    github:'http/www.github.com/jaythomasv29'
}

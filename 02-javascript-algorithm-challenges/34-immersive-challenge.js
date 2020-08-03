// Instructions (Read only)
// First, declare a variable named myArray and assign it to an empty array.
const myArray = []
// Great! Now populate myArray with two strings. Put your full name in the first string, and your Skype handle in the second.
myArray.push('James Vongampai', "skype_handle")
// Next, declare a function named cutName. It should expect a parameter name.
const cutName = (name) => {
    // cutName should return an array by breaking up the input string into individual words.
    // Example: cutName("Douglas Calhoun") should return ["Douglas", "Calhoun"]
    // Example: cutName("John B. Smith") should return ["John", "B.", "Smith"]
    return name.split(' ') //return name split into two invidiaul words
}
// Declare a new variable named myInfo and assign it to an empty object literal.
const myInfo = {}
// Add the following three key-value pairs to myInfo:
// Key: fullName, Value: The result of calling cutName on the name string within myArray.
myInfo.fullName = cutName(myArray[0])
// Key: skype, Value: The Skype handle within myArray.
myInfo.skype = myArray[1]
// Key: github, Value: If you have a github handle, enter it here as a string. If not, set this to null instead.
myInfo.github = 'http://github.com/jaythomasv29'

console.log(myInfo)


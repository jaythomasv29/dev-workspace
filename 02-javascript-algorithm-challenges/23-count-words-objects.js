// 23-count-words-objects.js
/**Given a string, 'countWords' returns an object where
 * each key is a word in the given string, with its value
 * being how many times that word appeared in the given string.
 * 
 * Given an empty string, it should return an empty object
 */

 function countWords(str){
     //Edge case
    if(str == ''){
        return {}
    }
    let countObj = {}
    //split input into array of words
    const splittedString = str.split(" ")
    console.log(splittedString)
    //iterate over the array of words
    for(let i = 0; i<splittedString.length; i++){
        if(countObj[splittedString[i]] == undefined){
            countObj[splittedString[i]] = 1
        } else {
            countObj[splittedString[i]]++
        }
    }
    //return result object
    return countObj
 }
 countWords('I am a coder and a server and I like cars')
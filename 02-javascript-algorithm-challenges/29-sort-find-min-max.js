// Write a function called "findMaxLengthOfThreeWords".

// Given 3 words, "findMaxLengthOfThreeWords" returns the length of the longest word.

function findMaxLengthOfThreeWords(word1, word2, word3) {
    // your code here
    const arr = [word1, word2, word3]
    let maxLength = arr[0]
    for(let i = 1; i<arr.length; i++){
        if(maxLength < arr[i].length){  //if the maxLength is less than,
            maxLength = arr[i].length  //set the new greatest to the item's length
        }
    }
    return maxLength  //return max length
  }
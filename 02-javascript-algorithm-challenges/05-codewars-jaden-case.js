//uppercase each first character in the strong of a sentence

function toJadenCase(str){
    let splitSentence = str.split("");
    console.log(splitSentence)
    for(let i = 0; i<splitSentence.length; i++){
        // make sure each beginning char of the array is capitalized
        splitSentence[0] = splitSentence[0].toUpperCase();  //first char in each element of the array
        if(splitSentence[i] == ' '){  // check if every new word capitalize
            splitSentence[i+1] = splitSentence[i+1].toUpperCase() // re assign the value to make each new first Char of a new word is capitalized
            i++
        }
    }
    const joinedSentence = splitSentence.join('')
    return (joinedSentence)

}
toJadenCase("How can mirrors be real if our eyes aren't real")

/*


//Solution Set 2


*/

function capitalize(word){
    //create a helper function that returns each word properly capitalized    
    return word[0].toUpperCase() + word.slice(1, word.length).toLowerCase()
}

capitalize('hello')

function toJadenCase(words){
    let sentenceArr = words.split(" ") // create an array of words
    let JadenSentence = []
    for (word of sentenceArr){
        JadenSentence.push(capitalize(word))
    }
    return JadenSentence.join(" ")

}

toJadenCase('it is a great day to code!')

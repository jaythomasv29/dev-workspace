//uppercase each first character in the strong of a sentence

function toJadenCase(str){
    let splitSentence = str.split("");
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

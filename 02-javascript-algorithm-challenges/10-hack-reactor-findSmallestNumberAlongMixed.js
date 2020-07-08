function findShortestWordAmongMixedElements(arr) {
    let wordArray = arr.filter((a => isNaN(a)))
    console.log('wordArray', wordArray)
    let wordLengthArray = wordArray.map(a => a.length).sort()
    console.log('wordLengthArray', wordLengthArray.sort())
    let sortedWordLength = wordLengthArray[0]
    console.log('sortedWordLength', sortedWordLength)
    if (wordArray.length == 0) {
        return ''
    } else {
        for (n of wordArray) {
            if (n.length == sortedWordLength) {
                console.log('n', n)
                return n
            } 
        }
    }
}
findShortestWordAmongMixedElements([4, 'two', 2, 'three']);
findShortestWordAmongMixedElements(["arguments", 'hello', 'arm', 'zz', 'a'])
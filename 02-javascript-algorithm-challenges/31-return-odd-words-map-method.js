function filterOddLengthWords(words) {
    // your code here
    const oddWords = words.filter(word => word.length % 2 != 0)
    return oddWords
  }


  var output = filterOddLengthWords(['there', 'it', 'is', 'now']);
  Array.is
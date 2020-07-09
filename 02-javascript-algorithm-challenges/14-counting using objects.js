function countAllCharacters(str) {
    // your code here
   let sortedAlphas = str.split("").sort()
   let countedFor = 1
   let sortedArr = []
   for (let i = 1; i<sortedAlphas.length; i++){
       if(i == sortedAlphas.lastIndexOf(sortedAlphas[i])){
           sortedArr.push([sortedAlphas[i], countedFor])
           countedFor = 1 //reset
       } else {
           countedFor++
       }
   }
   
   return (Object.fromEntries(sortedArr))
}
  countAllCharacters('banana')
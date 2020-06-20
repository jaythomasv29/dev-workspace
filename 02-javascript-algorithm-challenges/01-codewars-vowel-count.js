//Vowel Count Code Wars - https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/javascript


//Return the number "(count)" of vowels in the given string

//We will consider a, e, i, o, u as woels for this Kata
/* 

Method 1 with basic for and if statement

*/
function vowelCount(str) {
    var vowelsCount = 0;
    
    // enter your majic here
   for(let i = 0; i<str.length; i++){
   let letter = str[i]
   if(letter == ('a') || letter == ('e') || letter == ('i') || letter == ('o') || letter == ('u')){
     vowelsCount++
     }
   }
    
    return vowelsCount;
  }
console.log(vowelCount("racecar"))

/*

//Method 2 for loop with .includes() built in JS method

*/
function countVowels2(str){
    const vowels = 'aeiou'
    let counter = 0
    for(let i = 0; i<str.length; i++){
        if(vowels.includes(str[i])){
            counter++
        }
    }
    return counter;
}
console.log(countVowels2('racecar'))

/*

//Method 3 forOf loop  with .includes() built in JS method

*/

function countVowels3(str){
    let totalVowels = 0
    vowels = 'aeiou'
    for(let elem of str){
        if(vowels.includes(elem)){
            totalVowels++
        }
    }
    return totalVowels
}
countVowels3('hello')
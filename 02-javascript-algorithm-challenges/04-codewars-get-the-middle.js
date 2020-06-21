/* 

You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

#Examples:
Kata.getMiddle("test") should return "es"
Kata.getMiddle("testing") should return "t"
Kata.getMiddle("middle") should return "dd"
Kata.getMiddle("A") should return "A"

*/
function getMiddle(s){
    let strLength = s.length  //get length of string 
    let middlePosition = Math.floor(strLength/2); //find the middle position by halving and math.floor
    if(strLength % 2 == 0){
        //handle even numbers
        return (`${s[middlePosition-1]}${s[middlePosition]}`)
    } else {
        return (s[middlePosition])
    }
}

const getMiddle2 = (s) => {
    let strLength = s.length  //get length of string 
    let middlePosition = Math.floor(strLength/2); //find the middle position by halving and math.floor
    return strLength % 2 == 0 ? `${s[middlePosition-1]}${s[middlePosition]}` : s[middlePosition]
}
getMiddle("A")
getMiddle("hello") //l
getMiddle("test")  //es
getMiddle("tester") //st



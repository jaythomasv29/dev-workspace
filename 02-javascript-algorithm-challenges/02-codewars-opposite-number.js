/*

Method 2 : Using a basic if else statement

*/
function opposite(number) {
    //your code here
    if(number > 0){
    //check that the number is positive
    return number * -1
    } else {
    return number * -1
    }
  }
/*

Method 2 : Using a Ternary operator


condition ? exprIfTrue : exprIfFalse

Example: function getFee(isMember) {
  return (isMember ? '$2.00' : '$10.00');
}

*/
const opposite2 = (number) => (number > 0 ? number * -1 : number * -1)
opposite2(2)
opposite2(-29)


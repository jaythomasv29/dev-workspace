// Ternary Operator
let evenChecker = (number) => number % 2 == 0 ? "Even" : "Odd";
evenChecker(22)

//Ternary Operator example #2
var voteable = (age < 18) ? "Too young":"Old enough";


// Switch Statement
switch(expression) {
    case x:
      // code block
      break;
    case y:
      // code block
      break;
    default:
      // code block
  }

// Switch statement example #2
  switch (new Date().getDay()) {
    case 0:
      day = "Sunday";
      break;
    case 1:
      day = "Monday";
      break;
    case 2:
       day = "Tuesday";
      break;
    case 3:
      day = "Wednesday";
      break;
    case 4:
      day = "Thursday";
      break;
    case 5:
      day = "Friday";
      break;
    case 6:
      day = "Saturday";
  }
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in
function iterateOverObject(obj) {
    // your code here
    for (const property in obj){
        console.log(`${obj[property]}`)
    }
  }

// JavaScript Demo: Statement - For...In
  const object = { a: 1, b: 2, c: 3 };

for (const property in object) {
  console.log(`${property}: ${object[property]}`);
}

// expected output:
// "a: 1"
// "b: 2"
// "c: 3"

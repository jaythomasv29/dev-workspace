
// For all of these, what is the value of a when the function gets called with the alert()
// #1
function q1() {
    var a = 5;
    if(a > 1) {
        a = 3;
    }
    alert(a);  // Answer: 3
}

//#2
var a = 0;
function q2() {
    a = 5;
}
q2() //a = 5

function q22() {
    alert(a);
}

q22() //a = 5


//#3
function q3() {
    window.a = "hello"; // The window is somewhat like the Root scope
}

//within the window a = 'hello'


function q32() {
    alert(a);
}
q32() // 'hello'

//#4
var a = 1;
function q4() {
    var a = "test";
    alert(a); //child scope would alert 'test'
}
// root scope of a is still 'hello'

//#5
var a = 2;
if (true) {
    var a = 5;
    alert(a); //within the child scope a is 5
}
alert(a); // 5

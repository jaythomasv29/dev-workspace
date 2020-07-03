// root scope
var a = 92;
function myScope() {
    // child scope
    var a = 29;
    console.log(a)
}

function moreScope() {
    // child scope
    var a = "String"
    console.log(a)
}

function evenMoreScope() {
    // child scope
    a = 2927
    console.log(a)
}
console.log(a) //What is a?
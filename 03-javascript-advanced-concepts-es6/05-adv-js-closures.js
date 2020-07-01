// Closures

const first = () => {
    const greet = 'Hi!'
    const second = () => {
        alert(greet);
    }
    return second
}
const newFunc = first()
newFunc()

/*
//Closures : The child scope ALWAYS has reference to the parent scope 
    1) A function ran
    2) The function executed
    3) It is never going to run again
    4) But the child scope alway has references to the parent scope
    5) Parent scope does not have access to children

*/

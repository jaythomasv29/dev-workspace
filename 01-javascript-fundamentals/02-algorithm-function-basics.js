// functions store actions and can perform them
function ageChecker(num){
    if(num>0){
        console.log(`I am a positive number`)
    } else if (num == NaN){
        console.log(`I am nnot a number`)
    } else {
        console.log(`I am a negative number`)
    }
}

function add(a, b) {
    return a + b
}

const result = add(2,4)



//create grade calculator function that takes in parameter grade


const gradeCalc = (grade) => {
    //conditional to check grade
    //grade greater than 90
    if(grade >= 90){
        return 'A'
    } else if(grade >=80){
        return 'B'
    } else if(grade>=70) {
        return 'C'
    } else if (grade>=60){
        return 'D'
    } else {
        return 'F'
    }
}
console.log(gradeCalc(40))

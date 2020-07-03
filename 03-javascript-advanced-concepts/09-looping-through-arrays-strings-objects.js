// Iterating vs Enumerating

const str = 'jameson'
const arr = [0,1,2,3,'a','b','c']

const obj = {
    first: 'james',
    last: 'vongampai',
    numb: 29
}

//Iterating
//basic loop - strings and arrays
for(let i = 0; i<str.length; i++) {
    console.log(str[i])
}

//Iterating
//for of - string and arrays
for(item of arr){
    console.log(item)
}

//Enumerating
for(prop in obj){
    console.log(prop)
}


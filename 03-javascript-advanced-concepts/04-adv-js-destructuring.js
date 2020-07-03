const obj = {
    level: 9,
    name: 'Jamezxbons',
    experience: 99,
}

// let player = obj.player
// let experience = obj.experience
// let name = obj.name

//Destructuring
const { level, experience } = obj;
console.log(player)
console.log(experience)


//Creating objects using Destructuring
let city = 'Los Angeles'
let age = 27
let sex = 'male'

const person = {city, age, sex}
console.log(person.city)
city
age
sex
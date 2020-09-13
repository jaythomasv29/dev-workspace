const superheroes = require('superheroes')
const pokemon = require('pokemon')

const name = superheroes.random();
console.log(name)

console.log(`A ${pokemon.random()} fights a ${pokemon.random()}..!`)
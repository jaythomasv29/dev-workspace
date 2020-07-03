//reference type
[] === [] // false
[1] === [1] // false

var object1 = {
    value: 10
}
var object2 = object1

var object3 = {
    value: 10
}

object1 === object2  //true, same reference of memory

object1 === object3 // false, difference reference of memory

// this is the object we are currently inside of
console.log(this)


//instantiation : making a copy of an object, making an instance of an object

//classes are the blueprint of making an object
class Player {
    constructor(name, position, level){
        this.name = name
        this.position = position
        this.level = level
    }
    run(){
        console.log(`${this.name} just started running with the ball!~~`)
    }
}

const player1 = new Player('James', "SG", 100)
player1.shoot()

class Footballer extends Player {
    constructor(name, type){
        super(name, position, level)
    }
    touchdown(){
        console.log(`${this.name} just scored a touchdown!!! on ${type}`)
    }
}

const fbPlayer1 = new Footballer('Randy Moss', 'Offense')
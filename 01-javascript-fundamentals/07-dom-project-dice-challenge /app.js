const result = document.querySelector('#result')
const playBtn = document.querySelector('#play')
result.textContent = ''

const findWinner = () => {
    playBtn.textContent = 'Play Again!'
    let randomNumber1 = Math.floor(Math.random() * 6) + 1 //return a number from 1 to 6
    let randomNumber2 = Math.floor(Math.random() * 6) + 1 //return a number from 1 to 6
    let diceRoll1 = `./images/dice${randomNumber1}.png`
    let diceRoll2 = `./images/dice${randomNumber2}.png`
    document.querySelector('.img1').setAttribute('src', diceRoll1) // Dice roll to change image for Player 1
    document.querySelector('.img2').setAttribute('src', diceRoll2) // Dice roll to change image for Player 2
    if (randomNumber1 > randomNumber2) {
        result.textContent = 'Player 1 wins'
    }
    result.textContent = 'Player 2 wins'
    setTimeout(() => {
        result.textContent = ''
        playBtn.textContent = 'Play!'
    }, 4000)
    
}


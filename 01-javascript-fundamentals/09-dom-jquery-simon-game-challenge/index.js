const buttonColors = ['red', 'blue', 'green', 'yellow']
let gamePatternArray = []
let userPatternArray = []
let level = 0
isStarted = false;
console.log(isStarted)
//key press event handler jquery
$(document).on('keypress', function (e) {
    if (e.keyCode == 97 && !isStarted) { //if you Press 'A' game and isStarted false boolean
        //remove the event listener to prevent buttons
        $(document).off('keypress')
        isStarted = true //game has STARTED
        //run the game based on game level # of times
    }
});
const playGame = () => {
nextSequence();
$('#level-title').text(`Level ${level}`)
    $('div.btn').click((event) => {
        let userPickedColor = event.target.id
        userPatternArray.push(userPickedColor)

        console.log(userPatternArray)
        animate(userPickedColor)
        playSound(userPickedColor)
        //add a css class and remove it after using setTimeout
        $(event.target).addClass('pressed')
        setTimeout(() => {
            $(event.target).removeClass('pressed')
        }, 100)
        if (gamePatternArray.length === userPatternArray.length) { //if the array is the same length
            //begin check here 
            for (let i = 0; i < userPatternArray.length; i++) { //check each entry in the userPattern
                //if there is an error
                if (userPatternArray[i] != gamePatternArray) { // GAME OVER CASE
                    isStarted = false; //Stop Game
                    //reset both arrays - GAME OVER
                    userPatternArray = []
                    gamePatternArray = []
                    level = 0
                    console.log('game over')
                    //Change TEXT HERE BELOW
                    $('#level-title').text('Press `A` Key to Start')
                    $(document).on('keypress')
                } else { //CONTINUE GAME CASE
                    // level up and repeat game , also reset userPatternArray for re-entry
                    console.log('next level')
                    nextSequence()
                    // userPatternArray = []
                }

            }
        }
    });



// create function that generates random number between 0 - 3
const nextSequence = () => {
    //create random number
    const randomNumber = Math.floor(Math.random() * 4)
    //pick random color from buttonColors array
    const randomChosenColor = buttonColors[randomNumber]
    gamePatternArray.push(randomChosenColor)
    setTimeout(() => {
        animate(randomChosenColor)
        playSound(randomChosenColor)
    }, 700)
    //increment to next level
    level++
    $('#level-title').text(`Level ${level}`)

}

//animation to random square
const animate = (color) => {
    $('#' + color).fadeOut(100).fadeIn(100)
}
//play sound
const playSound = (name) => {
    let randomAudio = new Audio(`./sounds/${name}.mp3`)
    // console.log(randomAudio)
    randomAudio.play()
}
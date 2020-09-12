const buttonColors = ['red', 'blue', 'green', 'yellow']
const gamePattern = []
const userPattern = []


$('div.btn').click((event) => {
    const userPickedColor = event.target.id
    userPattern.push(userPickedColor)
    // console.log(userPattern)
    animate(userPickedColor)
    playSound(userPickedColor)
    //add a css class and remove it after using setTimeout
    $(event.target).addClass('pressed')
    setTimeout(() => {
        $(event.target).removeClass('pressed')
    },100)
})

// create function that generates random number between 0 - 3
const nextSequence = () => {
    //create random number
    const randomNumber = Math.floor(Math.random() * 4)
    //pick random color from buttonColors array
    const randomChosenColor = buttonColors[randomNumber]
    gamePattern.push(randomChosenColor)
    animate(randomChosenColor)
    playSound(randomChosenColor)
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

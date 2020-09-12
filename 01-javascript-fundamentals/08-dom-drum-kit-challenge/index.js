// Load audio files
var w = new Audio("./sounds/crash.mp3");
var a = new Audio("./sounds/kick-bass.mp3");
var s = new Audio("./sounds/snare.mp3");
var d = new Audio("./sounds/tom-1.mp3");
var j = new Audio("./sounds/tom-2.mp3");
var k = new Audio("./sounds/tom-3.mp3");
var l = new Audio("./sounds/tom-4.mp3");
const playDrum = (event) => {
    let letter = (event.key || event.target.innerHTML)
    console.log(letter)
    switch (letter) {
        case 'w':
            // alert('w')
            w.play();
            break;
        case 'a':
            // alert('a')
            a.play();
            break;
        case 's':
            // alert('s')
            s.play();
            break;
        case 'd':
            // alert('d')
            d.play();
            break;
        case 'j':
            // alert('j')
            j.play();
            break;
        case 'k':
            // alert('k')
            k.play();
            break;
        case 'l':
            // alert('l')
            l.play();
            break;
        // default: console.log(event);
    }
    return letter
}

document.querySelectorAll('.drum').forEach(drum => {
    drum.addEventListener('click', playDrum)
})
document.addEventListener('keydown', playDrum)
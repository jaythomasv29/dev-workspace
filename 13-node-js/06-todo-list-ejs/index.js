const express = require('express')
const bodyParser = require('body-parser')
const port = 3000
const ejs = require('ejs')

const app = express()
app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(bodyParser.urlencoded({ extended: true }))


const todos = ['eat', 'sleep', 'workout', 'code']
const today = new Date()
// const dayOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'] // day of week array
// const currentDayOfWeek = (dayOfWeek[today.getDay()])
const options = {
    weekday: 'long',
    day: 'numeric',
    month: 'long'
}
const day = today.toLocaleDateString('en-US', options)
console.log(day)

app.get('/', (req, res) => {
    res.render('list', {currentDay: day, todos})
})

app.post('/', (req, res) => {
    const task = req.body.task
    todos.push(task)
    // res.render('list', { currentDay: day, todos })
    res.redirect('/')
    
})

app.listen(port, () => {
    console.log('app live on port: ' + port)
})
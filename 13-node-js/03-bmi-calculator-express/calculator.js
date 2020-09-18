const express = require(`express`)
const bodyParser = require('body-parser')

const app = express()
const port = 3000

// Create application/x-www-form-urlencoded parser
const urlencodedParser = bodyParser.urlencoded({ extended: true })
app.use(urlencodedParser)

app.get('/', function (req, res) {
    res.sendFile(__dirname + '/calculator.html');
})

app.post('/add', function (req, res) {
    const num1 = Number(req.body.num1)
    const num2 = Number(req.body.num2)
    const result = String(num1 + num2)
    res.send(`The sum of these two numbers are ${result}`)
})

app.post('/bmi', function (req, res) {
    const weight = Number(req.body.weight)
    const height = Number(req.body.height)
    const bmi = (weight / height**2)
    res.send(`<h2>Your BMI is: ${bmi}</h2>`)
})



app.listen(port, () => {
    console.log(`App is running on port: ${port}`)
})
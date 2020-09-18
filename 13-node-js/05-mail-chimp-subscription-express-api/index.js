const express = require('express')
const port = 3000

const bodyParser = require('body-parser')

const app = express()
app.use(express.static('./public'))


app.use(bodyParser.urlencoded({extended: true}))

app.get('/', (req, res) => {
    res.sendFile(`${__dirname}/index.html`)
})

app.post('/subscribe', (req, res) => {
    // Values are stored
    const firstName = req.body.firstname
    const lastName = req.body.lastname
    const email = req.body.inputEmail
})

app.listen(port, () => {
    console.log(`App is listening on port ${port}...`)
})
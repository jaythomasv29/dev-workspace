
const express = require('express')
const bodyParser = require('body-parser')
// const request = require("request")
const https = require('https')
const port = 3000


const app = express()

app.use(express.static('./public'))


app.use(bodyParser.urlencoded({
    extended: true
}))



app.get('/', (req, res) => {
    res.sendFile(`${__dirname}/index.html`)
})

app.post('/subscribe', (req, res) => {
    // Values are stored
    const firstName = req.body.firstname
    const lastName = req.body.lastname
    const email = req.body.inputEmail
    // put in an Object that mailchimp recognizes
    const data = {
        members: [
            {
            email_address: email,
            status: "subscribed",
            merge_fields: {
                FNAME: firstName,
                LNAME: lastName
            }
            }
        ]
    }
    const jsonData = JSON.stringify(data) // stringify json data
})

app.listen(port, () => {
    console.log(`App is listening on port ${port}...`)
})


// 9549d22d048a38006f1287d92005dc45-us20
// 322e466e99
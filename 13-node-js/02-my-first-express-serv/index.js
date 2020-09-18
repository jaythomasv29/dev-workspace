const express = require('express')
const app = express()
port = 3000

//loads a static file
// app.use(express.static(public'));


app.get('/', function (req, res) {
    res.sendFile(`${__dirname}/public/index.html`)
})


app.get('/about', function (req, res) {
    res.sendFile(`${__dirname}/public/about.html`)
})

app.get('/home', function (req, res) {
    res.sendFile(`${__dirname}/public/home.html`)
})


app.listen(port, () => {
    console.log(`App listening at port: ${port}`)
})
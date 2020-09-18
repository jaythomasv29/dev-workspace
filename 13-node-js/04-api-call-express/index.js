const express = require('express')
const app = express()
const https = require('https')

const bodyParser = require('body-parser')
app.use(express.static('./public'))

app.use(bodyParser.urlencoded({
    extended: false
}))
// app.use( bodyParser.json() );       // to support JSON-encoded bodies


const port = 3000
app.get('/', (req, res) => {
    res.sendFile(`${__dirname}/index.html`)
})
// POST request from form
app.post('/getWeather', (req, res) => {
    // get query from the form using name="city" attribute in HTML file
    const cityWeatherQuery = req.body.city
    console.log('city: ', cityWeatherQuery)
    const url = `https://api.openweathermap.org/data/2.5/weather?q=${cityWeatherQuery}&appid=66a7a939c238f8ac2c36fa71eb104d9c&units=metric`
    https.get(url, (response) => {
        //using on method
        response.on('data', (data) => {
            const weatherData = JSON.parse(data)
            const imageURL = `http://openweathermap.org/img/wn/${weatherData.weather[0].icon}@2x.png`
            console.log(imageURL)
            res.set('Content-Type', 'text/html')
            res.write("<img src='" + imageURL + "'>")
            res.write('<h1>Current temperature in ' + weatherData.name + ' is ' + weatherData.weather[0].description + ', ' + weatherData.main.temp + 'C' + '</h1>')
            res.send()
        })
    })

})

app.listen(port, () => {
    console.log(`Listening on port: ${port}...`)
})
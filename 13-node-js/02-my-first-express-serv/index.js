const express = require('express')
const app = express()
port = 3000

//loads a static file
app.use(express.static('./public'));


app.get('/index.html', function (req, res) {
    res.sendFile(`${__dirname}/index.html`)
})

app.listen(port, () => {
    console.log(`App listening at port: ${port}`)
})
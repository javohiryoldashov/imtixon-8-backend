const express = require('express')
const app = express()
const router = require('./moduls')
const cors = require('cors')
const port = process.env.PORT || 9000

app.use(express.json())
app.use(cors())
app.use(router)


app.use('/*' , (req, res)=> res.send('404 Not Found 🔞'))


app.listen(port, console.log(port))
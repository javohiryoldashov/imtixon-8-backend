const express = require('express')
const app = express()
const router = require('./moduls')
const cors = require('cors')

app.use(express.json())
app.use(cors())
app.use(router)


app.use('/*' , (req, res)=> res.send('404 Not Found 🔞'))


app.listen(9000, console.log(9000))
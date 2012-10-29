express = require "express"
app = express()
require('./config')(app)
require('./routes')(app)

app.listen 3000
console.log 'Listening on port 3000'

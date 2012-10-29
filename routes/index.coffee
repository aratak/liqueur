express = require 'express'

module.exports = (app)->

  app.get '/', (req, res)->
    res.send "There is no template engine"

  app

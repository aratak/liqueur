express = require 'express'

module.exports = (app)->
  app.use express.errorHandler showStack: true, dumpExceptions: true

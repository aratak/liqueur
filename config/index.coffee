express = require 'express'

module.exports = (app)->
  app.use express.bodyParser()
  app.use express.methodOverride()
  require('./template')(app)
  require('./sass')(app)
  require('./coffee')(app)
  app.use express.cookieParser('fuabeijee2coh')
  app.use express.session(secret: "fuabeijee2coh")
  app.use express.static("#{process.cwd()}/public")
  require('./logging')(app)
  require('./error')(app)
  app

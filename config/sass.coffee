sass = require 'node-sass'

module.exports = (app)->
  app.use sass.middleware
    src: "#{process.cwd()}"
    dest: "#{process.cwd()}/public"
    debug: true
  app

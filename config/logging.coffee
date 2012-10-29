express = require("express")
colors = require("colors")
useragent = require("useragent")
express.logger.format "pretty", (tokens, req, res) ->
  app = req.app or res.app
  status = res.statusCode

  color =  if status >= 500
    "magenta"
  else if status >= 400
    "red"
  else if status >= 300
    "yellow"
  else
    "green"


  agent = useragent.parse(req.headers["user-agent"])
  now = new Date()
  [
    ("[" + now.toUTCString().split(" ")[4] + " " + now.getUTCDate() + "/" + (now.getUTCMonth() + 1) + "/" + now.getUTCFullYear().toString().substr(-2) + "]").white,
    (req.headers["ip"] or req.headers["x-ip"] or req.headers["x-real-ip"] or req.connection.remoteAddress).magenta,
    (req.method + " " + status)[color],
    (req.url or "-").cyan,
    (req.headers.referer or "-").green,
    agent.toString().grey
  ].join " "

module.exports = (app)->
  app.use express.logger('pretty')

{User} = require '../models'

middleware = (req, res, next)->

  getUserId = ->
    req.session['user_id'] or req.cookies['user_id']

  setUser = (err, user, cb)->
    req.session['user_id'] = user.id
    res.cookie('user_id', user.id, maxAge: 60000*60*24*360)
    req.user = user
    cb()

  createUser = (cb)->
    user = new User()
    user.save (err)->
      setUser(err, user, cb)


  if getUserId()?
    User.findById getUserId(), (err, user)->
      if user?
        setUser(err, user, next)
      else
        createUser(next)
  else
    createUser(next)

module.exports = (app)-> app.use middleware

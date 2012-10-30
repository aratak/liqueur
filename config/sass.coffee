spawn = require('child_process').spawn

module.exports = (app)->
  sass = spawn 'sass', ['--scss', '--line-numbers', '--no-cache', '--style', 'expanded', '--watch', 'assets/stylesheets:public/assets']
  sass.stdout.on 'data', (data)-> console.log "sass: #{data}"
  sass.stderr.on 'data', (data)-> console.log "sass: #{data}"
  sass.on 'exit', (code)-> console.log "sass: [exit] #{code}"

  process.on 'exit', -> sass.kill('exit');

  app

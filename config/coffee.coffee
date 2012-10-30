spawn = require('child_process').spawn

module.exports = (app)->
  coffee = spawn 'coffee', ['-o', 'public/assets', '-cw', 'assets/javascripts']
  coffee.stdout.on 'data', (data)-> console.log "coffee: #{data}"
  coffee.stderr.on 'data', (data)-> console.log "coffee: #{data}"
  coffee.on 'exit', (code)-> console.log "coffee: [exit] #{code}"

  process.on 'exit', -> coffee.kill('exit');

  app

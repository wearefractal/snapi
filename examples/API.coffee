snapi = require '../lib/main'
path = require 'path'

snapi.run path.join(__dirname, './services/'), 1337

console.log 'Demo API started!'

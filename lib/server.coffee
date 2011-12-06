http = require 'http'
route = require './router'
url = require 'url'
qs = require 'querystring'

module.exports =
  start: (folder, port) ->
    port ?= 8080
    @server = http.createServer (req, res) -> 
      uri = url.parse req.url, true
      if req.method is 'GET' or 'DELETE'
        route folder, uri.pathname, uri.query, res
      else
        data = ''
        req.on 'data', (chunk) -> data += chunk
        req.on 'end', -> 
          req.removeAllListeners()
          try
            body = JSON.parse(data)
          catch err
            body = {}
          route folder, uri.pathname, body, res
        
    @server.listen port

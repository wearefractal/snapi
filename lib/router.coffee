path = require 'path'
fs = require 'fs'
  
route = (folder, api, args, res) ->
  return route(folder, 'index', args, res) if api is '/'
  service = path.join folder, api
  try
    require.resolve service
  catch err # Invalid route, file did not exist or wasn't a valid module
    return route(folder, 'index', args, res)
  require(service).exec.apply null, [res, args]
      
module.exports = route

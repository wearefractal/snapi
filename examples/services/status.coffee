module.exports =
  exec: (res, {@name}) -> res.end "#{@name}, we are online!"

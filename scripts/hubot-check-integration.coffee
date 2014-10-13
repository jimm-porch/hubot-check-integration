# Description:
#   Hubot Check Integration
#
# Dependencies:
#   None
#
# Commands:
#   hubot check-integration - checks integration services
#
# Author:
#   porch

check = require 'check-porch-integration-env'
path = require 'path'

module.exports = (robot) ->
  robot.respond /check-integration/i, (msg) ->
    filename = path.join(__dirname, 'service.yaml')
    console.log("CHCEKING:----------- #{filename}");
    check filename, (err, result) ->
      str = "GOOD: #{ result.good.join(' ,') } \nBAD: #{result.bad.join(' ,')}"
      msg.send str

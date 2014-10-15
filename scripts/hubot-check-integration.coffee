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

Log = require 'log'
check = require 'check-porch-integration-env'
path = require 'path'

module.exports = (robot) ->
  logger = new Log process.env.HUBOT_LOG_LEVEL or 'info'

  robot.respond /check-integration/i, (msg) ->
    filename = path.join('.', 'service.yaml')
    logger.warning "hubot-check-env using service.yaml at #{filename}"
    check filename, (err, result) ->
      str = "GOOD: #{ result.good.map((s) -> s.name).join(' ,')}\n"
      str += "BAD: #{ result.bad.map((s) -> s.name).join(' ,')}\n"
      for s in result.bad
        str += "[ERROR] #{ s.name } (#{s.url}) - #{s.body})"
      msg.send str

module.exports = (robot) ->
  robot.respond /tiqav (.*)/i, (msg) ->
    request = require('request');
    #request.get("http://api.tiqav.com/search.json?q=#{msg.match[1]}", (error, response, body) ->
    request.get("https://slack.com/api/chat.postMessage?token=xoxb-240392778389-Wzxl4A0TNuCc0v4d6yR8tq7R&channel=%23test&username=motionbot&text=Œ©‚İ‚ªŒ¸­‚µ‚Ü‚µ‚½B&as_user=true", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('’Ê’m‚É¸”s‚µ‚Ü‚µ‚½...')
      data = JSON.parse(body)[0]
      # robot.logger.info data
      msg.send "³’m‚µ‚Ü‚µ‚½")
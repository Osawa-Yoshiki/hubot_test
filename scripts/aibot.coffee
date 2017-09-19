module.exports = (robot) ->
  robot.respond /みんなに通知して/i, (msg) ->
    request = require('request');
    request.get('https://slack.com/api/chat.postMessage?token=xoxb-240392778389-54q5GyT8zrKTYJ2YUjPsQesP&channel=%23swtt&username=motionbot&text=見込みが減少しました。&as_user=true', (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('通知に失敗しました...')
      msg.send "承知しました")

  robot.respond /状況を#(.*)に通知して/i, (msg) ->
    request = require('request');
    request.get("https://slack.com/api/chat.postMessage?token=xoxb-240392778389-54q5GyT8zrKTYJ2YUjPsQesP&channel=%23#{msg.match[1]}&username=motionbot&text=見込みが減少しました。&as_user=true", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('通知に失敗しました...')
      msg.send "承知しました")


  robot.respond /状況を#(.*)に配信して/i, (msg) ->
    request = require('request');
    request.get("https://slack.com/api/chat.postMessage?token=xoxb-240392778389-54q5GyT8zrKTYJ2YUjPsQesP&channel=%23#{msg.match[1]}&username=motionbot&text=見込みが減少しました。&as_user=true", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('通知に失敗しました...')
      msg.send "承知しました")
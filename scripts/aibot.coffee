module.exports = (robot) ->

  robot.respond /テステス/i, (msg) ->
    request = require('request');
    msg.send "ええええ"

  robot.respond /みんなに通知して/i, (msg) ->
    request = msg.http('https://slack.com/api/chat.postMessage?token=xoxp-239710252337-240366548533-243933168597-dd0b4afe621e4b3722c2da72accd1460&channel=%23general&username=motionbot&as_user=false&icon_url=https://goo.gl/udYNSb&text=%e4%bb%8a%e9%80%b1%e3%81%ae%e8%a6%8b%e8%be%bc%e6%a1%88%e4%bb%b6%e3%82%92%e3%81%94%e9%80%a3%e7%b5%a1%e3%81%97%e3%81%be%e3%81%99&attachments=[{"text":"案件①：(0000352906/*****/Dr.Sum )\n案件②：( 0000368940/*****/MotionBoard)\n案件③：( 0000373052/*****/SVF )"}]')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send "承知しました"


  robot.respond /リマインドお願いします/i, (msg) ->
    request = msg.http('https://slack.com/api/chat.postMessage?token=xoxp-239710252337-240366548533-243933168597-dd0b4afe621e4b3722c2da72accd1460&channel=%23general&username=motionbot&as_user=false&icon_url=https://goo.gl/udYNSb&text=%e4%bb%8a%e9%80%b1%e3%81%ae%e8%a6%8b%e8%be%bc%e6%a1%88%e4%bb%b6%e3%82%92%e3%81%94%e9%80%a3%e7%b5%a1%e3%81%97%e3%81%be%e3%81%99&attachments=[{"text":"案件①：(0000352906/*****/Dr.Sum )\n案件②：( 0000368940/*****/MotionBoard)\n案件③：( 0000373052/*****/SVF )"}]')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send "承知しました"


  robot.respond /テスト/i, (msg) ->
    msg.send "テスト！"


  robot.respond /状況を#(.*)に通知して/i, (msg) ->
    request = msg.http("https://slack.com/api/chat.postMessage?token=xoxp-239710252337-240366548533-243933168597-dd0b4afe621e4b3722c2da72accd1460&icon_url=https://goo.gl/udYNSb&channel=%23" + #{msg.match[1]} + "&username=motionbot&text=見込みが減少しました。&as_user=false")
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send "承知しました"

  robot.respond /状況を#(.*)に配信して/i, (msg) ->
    request = msg.http("https://slack.com/api/chat.postMessage?token=xoxp-239710252337-240366548533-243933168597-dd0b4afe621e4b3722c2da72accd1460&icon_url=https://goo.gl/udYNSb&channel=%23" + #{msg.match[1]} + "&username=motionbot&text=見込みが減少しました。&as_user=false")
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send "承知しました"
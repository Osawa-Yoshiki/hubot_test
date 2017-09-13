# Description:
#   Hello World!
#
# Commands:
#   hubot hello : Returns "world!"

module.exports = (robot) ->

  robot.respond /おはよう/i, (msg) ->
    msg.send "おはようございます！"


  robot.respond /詳細を教えて/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細をおしえて/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細をおしえて。/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細を教えて。/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"


# Description:
#   Hello World!
#
# Commands:
#   hubot hello : Returns "world!"

module.exports = (robot) ->

  robot.respond /おはよう/i, (msg) ->
    msg.send "おはようございます！"
  robot.respond /こんにちは/i, (msg) ->
    msg.send "こんにちは！"
  robot.respond /こんばんわ/i, (msg) ->
    msg.send "こんばんわ！"
  robot.respond /おやすみ/i, (msg) ->
    msg.send "おやすみなさい！"

  robot.respond /詳細を教えて/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細をおしえて/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細をおしえて。/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"
  robot.respond /詳細を教えて。/i, (msg) ->
    msg.send "●●社の●●案件の金額が●●円になりました"

  robot.respond /今期予算は達成する？/i, (msg) ->
    msg.send "予算●●Mに対して●●Mで達成見込です。"
  robot.respond /今期の予算は達成する？/i, (msg) ->
    msg.send "予算●●Mに対して●●Mで達成見込です。"

  robot.respond /来期予算は達成する？/i, (msg) ->
    msg.send "予算●●Mに対して●●Mです。見込が●●不足します。"
  robot.respond /来期の予算は達成する？/i, (msg) ->
    msg.send "予算●●Mに対して●●Mです。見込が●●不足します。"




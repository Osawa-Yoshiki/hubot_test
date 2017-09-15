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
    msg.send "【案件名：塚本日向商事／販売管理／MotionBoard】の金額が変更になりました"
  robot.respond /詳細をおしえて/i, (msg) ->
    msg.send "【案件名：塚本日向商事／販売管理／MotionBoard】の金額が変更になりました"
  robot.respond /詳細をおしえて。/i, (msg) ->
    msg.send "【案件名：塚本日向商事／販売管理／MotionBoard】の金額が変更になりました"
  robot.respond /詳細を教えて。/i, (msg) ->
    msg.send "【案件名：塚本日向商事／販売管理／MotionBoard】の金額が変更になりました"

  robot.respond /今期予算は達成する？/i, (msg) ->
    msg.send "予算4079Mに対して4100Mで達成見込です。"
  robot.respond /今期の予算は達成する？/i, (msg) ->
    msg.send "予算4079Mに対して4100Mで達成見込です。"

  robot.respond /予算の進捗を教えて/i, (msg) ->
    msg.send "予算4079Mに対して4100M、達成率100.5%です。"
  robot.respond /予算進捗を教えて/i, (msg) ->
    msg.send "予算4079Mに対して4100M、達成率100.5%です。"

  robot.respond /来期予算は達成する？/i, (msg) ->
    msg.send "予算4486Mに対して2467Mです。見込が2019M不足します。"
  robot.respond /来期の予算は達成する？/i, (msg) ->
    msg.send "予算4486Mに対して2467Mです。見込が2019M不足します。"




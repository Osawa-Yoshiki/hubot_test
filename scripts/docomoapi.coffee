# Description
#   A Hubot script that calls the docomo dialogue API
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_DOCOMO_DIALOGUE_P
#   HUBOT_DOCOMO_DIALOGUE_API_KEY
#
# Commands:
#   hubot �G�k <message> - �G�k�Θb(docomo API)
#
# Notes:
#   ���܂ɖ������Ē��ق��܂��B
#   ��b�̌p���Bcontext, mode ��ۑ��B��������莞��(2���ق�)�o�߂�����j��
#   
# Author:
#   bouzuya <m@bouzuya.net>
#   Mako N <mako@pasero.net>
#
# License:
#   Copyright (c) 2014 bouzuya, Mako N
#   Released under the MIT license
#   http://opensource.org/licenses/mit-license.php
#
module.exports = (robot) ->
  status  = {}

  robot.respond /(?:�G�k\s+|(?:(?:(�l|����|�T�}|�a|�ǂ�|����|�T��|�͂�|�ǂ�|���|�����|�`����|��|�N|����|�N��|����|�^��|�搶|����(?:��|�[))(?:�A|�B|!|�I)?))|(?:(?:�A|�B|!|�I)\s*))(.*)/, (res) ->
    p = parseFloat(process.env.HUBOT_DOCOMO_DIALOGUE_P ? '0.3')
    return unless Math.random() < p
    message = res.match[2]
    return if message is ''

    d = new Date
    now = d.getTime()
    if now - status['time'] > 2 * 60 * 1000
      status =
        "id": ''
        "mode": ''

    if /(����|�^��)/.test(res.match[1])
      status = "t": 30
    else if /(�͂�|�ǂ�|���)/.test(res.match[1])
      status = "t": 20
    else if d.getDay() is 2
    # �Ηj���͊֐���
      status = "t": 20
    else
      status = "t": ''

    res
      .http 'https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue'
      .query APIKEY: process.env.HUBOT_DOCOMO_DIALOGUE_API_KEY
      .header 'Content-Type', 'application/json'
      .post(JSON.stringify({ utt: message, context: status['id'], mode: status['mode'], t: status['t'] })) (err, response, body) ->
        if err?
          console.log "Encountered an error #{err}"
        else
          res.send JSON.parse(body).utt
          status =
            "time": now
            "id": JSON.parse(body).context
            "mode": JSON.parse(body).mode
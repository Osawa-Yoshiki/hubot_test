module.exports = (robot) ->
  robot.respond /tiqav (.*)/i, (msg) ->
    request = require('request');
    request.get("http://api.tiqav.com/search.json?q=#{msg.match[1]}", (error, response, body) ->
      if error or response.statusCode != 200
        return msg.send('�摜�����Ɏ��s���܂���...')
      data = JSON.parse(body)[0]
      # robot.logger.info data
      msg.send "�摜�̗l�q�ł�: http://img.tiqav.com/#{data.id}.#{data.ext}" )
{Hook} = require 'hook.io'

hook = new Hook
  name: 'connector'

hook.on 'twitter::data', (data) ->
  hook.emit 'irc::msg', "@#{data.user.screen_name}: #{data.text}"

hook.start()

{Hook} = require 'hook.io'
Twitter = require 'ntwitter'

hook = new Hook
  name: 'twitter'

hook.start()

twit = new Twitter
  consumer_key: 'n0Ow7JQwaE1rURUqLZEcbQ'
  consumer_secret: 'pRDuNGiUNt9nFqLCEPfqSF24CsAFonVXMnmgIlnPmI0'
  access_token_key: '11724792-PPZau9cwa4LYjeiGPlDasbsy707Q0krosxuULisNO'
  access_token_secret: '676K7gU7ZTXF3ozEthNJJqisa2RHab84AslyUNZFomQ'

twit.stream 'user', (stream) ->
  stream.on 'data', (data) ->
    # don't emit unless we have a user, so that we don't end up sending out
    # the initial friend list.
    if data.user
      hook.emit 'tweet', data

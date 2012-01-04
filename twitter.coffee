{Hook} = require 'hook.io'
Twitter = require 'ntwitter'

hook = new Hook
  name: 'twitter'

hook.start()

conf = JSON.parse require('fs').readFileSync('twitter.json').toString()

twit = new Twitter conf

twit.stream 'user', (stream) ->
  stream.on 'data', (data) ->
    # don't emit unless we have a user, so that we don't end up sending out
    # the initial friend list.
    if data.user
      hook.emit 'tweet', data

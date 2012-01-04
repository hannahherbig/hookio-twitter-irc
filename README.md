My first [hook.io][] thingy. Runs three separate hooks for connecting to IRC, 
connecting to twitter, and posting things from twitter to IRC.

1.  Assuming you already have [node][], [npm][], and [foreman][] installed,

        git clone git://github.com/andrew12/hookio-twitter-irc.git
        cd hookio-twitter-irc
        npm install

1.  Create a file called `config.json` for your IRC config. Here's mine.

        {
          "irc-server": "irc.malkier.net",
          "nick": "hookio",
          "channels": ["#bottestlab"],
          "showErrors": "true",
          "userName": "hookio"
        }

2.  Create a file called `twitter.json` for your Twitter config. Create an app 
    at [twitter][] and put your credentials here. Here's a template.

        {
          "consumer_key": "",
          "consumer_secret": "",
          "access_token_key": "",
          "access_token_secret": ""
        }

[hook.io]: http://hook.io
[node]: http://nodejs.org/
[npm]: http://npmjs.org/
[foreman]: http://ddollar.github.com/foreman/
[twitter]: https://dev.twitter.com/apps

blackjack
=========

start game:
<pre><code>
curl enova-blackjack.herokuapp.com/api/v1/new_game
// sample response:
{"gid":"1234","dealer":["Qh","*"],"player":["Jh","5d"],"winner":"none","reason":"still_playing"}
</code></pre>

status of game:
<pre><code>
curl enova-blackjack.herokuapp.com/api/v1/status/:gid
// gid is the game id from when a game was started
curl enova-blackjack.herokuapp.com/api/v1/status/1234
{"gid":"1234","dealer":["Qh","*"],"player":["Jh","5d"],"winner":"none","reason":"still_playing"}
</code></pre>

play game:
<pre><code>
curl -d cmd=[hit|stand] enova-blackjack.herokuapp.com/api/v1/game/:gid
curl -d cmd=hit enova-blackjack.herokuapp.com/api/v1/game/1234
// or
curl -d '{"cmd":"hit"}' enova-blackjack.herokuapp.com/api/v1/game/1234
{"gid":"1234","dealer":["Qh","6c"],"player":["Jh","5d","7s"],"winner":"dealer","reason":"player_busted"}
</code></pre>

var express = require('express'),
    http = require('http'),
    redis = require('redis');

var app = express();

var client = redis.createClient(
  process.env.REDIS_PORT_6379_TCP_PORT || 6379,
  process.env.REDIS_PORT_6379_TCP_ADDR || '127.0.0.1'
);

app.get('/', function(req, res, next) {
  client.incr('visits', function(err, visits) {
    if(err) return next(err);
    res.send('Hello its me viewed this page again ' + visits + ' times! on my docker-travis test Thanks');
  });
});

http.createServer(app).listen(process.env.PORT || 3000, function() {
  console.log('Listening on port ' + (process.env.PORT || 3000));
});

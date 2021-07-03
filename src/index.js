var express = require('express');
var ip = require('ip');
const os = require('os');
var app = express();

app.get('/', function(req, res) {
    res.send(`${ip.address()} from ${os.hostname()}`);
})

var server = app.listen(8080, function() {
    var host = server.address().address
    var port = server.address().port

    console.log("Web app listening at http://%s:%s", host, port)
})

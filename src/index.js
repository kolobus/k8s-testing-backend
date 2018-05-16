var express = require('express');
var ip = require('ip');
var app = express();

app.get('/', function(req, res) {
    res.send(`${ip.address()} - Hello Node Express World, Version 1.0`);
})

var server = app.listen(8080, function() {
    var host = server.address().address
    var port = server.address().port

    console.log("Web app listening at http://%s:%s", host, port)
})
'use strict';

var _database = require('./database');

var app = require('express')();
var bodyParser = require('body-parser');
var PORT = 8080;


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/posts', function (req, res) {
    console.log('Sending Posts');
    setTimeout(function () {
        res.send(_database.posts);
    }, 2000);
});

app.get('/user', function (req, res) {
    res.send(_database.users[0]);
});

app.listen(PORT, function () {
    console.log('Running RadCode server on ' + PORT);
});
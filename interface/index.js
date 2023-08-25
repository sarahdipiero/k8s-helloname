const express = require('express');
const path = require('path');
const app = express();

app.listen(8081);

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '/index.html'));
});
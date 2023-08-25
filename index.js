const express = require('express');

const app = express();

app.listen(8080);

app.get('/getName', (req, res) => {
    res.send("Hello " + req.query.name);
})
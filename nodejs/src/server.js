'use strict';

const express = require('express');

const PORT = 5000;
const HOST = '0.0.0.0';

const app = express();
app.get('/', (req, res) => {
    console.log('hit!')
    res.send('Hello, world\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
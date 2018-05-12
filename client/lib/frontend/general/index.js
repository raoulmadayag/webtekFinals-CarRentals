'use strict';


// ========================================================
// Load necessary modules =================================
const express = require('express');
const app = express();
app.set('view engine', 'ejs');
app.use('/', function(req, res) {
    res.send('Hello World');
});

module.exports = app;
'use strict';

const express = require('express');
const dbconfig = require('../database/database');
const bodyParser = require('body-parser');

const formidable = require('formidable');

const mysql = require('mysql');
const url = require('url');
const str = require('string');
const StringBuilder = require('string-builder')
const app = express();

const bcrypt = require('bcryptjs');
var salt = bcrypt.genSaltSync(10);

const appRoot = require('app-root-path');

app.use(bodyParser);

const connection = mysql.createConnection(dbconfig.connection);
connection.query('USE ' + dbconfig.database);

module.exports = function(app, passport) {

    // ============================================================================
    // =============================== HOME PAGE ==================================
    // ============================================================================
    app.get('/', function (req, res) {
        res.render('../../frontend/authenticate/views/index.ejs', { message: req.flash('loginMessage') });
    });

    // ============================================================================
    // ================================= LOGIN ====================================
    // ============================================================================
    app.get('/index', function(req, res) {
        res.redirect('../../frontend/authenticate/views/index.ejs', { message: req.flash('loginMessage') });
    })
    


    app.post('/index', passport.authenticate('local-login', {
            successRedirect: '/results',
            failureFlash: true
        }),
        function(req, res) {
            if (req.body.remember) {
                req.session.cookie.maxAge = 1000 * 60 * 4;
            } else {
                req.session.cookie.expires = false;
            }
            
            res.redirect('/');
        });
    // PROTECTED
    // ============================================================================
    // ============================================================================


    // ============================================================================
    // =============================== HOME PAGE ==================================
    // ============================================================================
    app.get('/', function (req, res) {
        res.render('../../frontend/general/views/index.ejs', { message: req.flash('loginMessage') });
    });

 


    app.get('/results', function (req, res) {
        res.render('../../frontend/general/views/results.ejs');
    });
    app.get('/driverinfo', function (req, res) {
        res.render('../../frontend/general/views/driverinfo.ejs');
    });
    app.get('/payment', function (req, res) {
        res.render('../../frontend/general/views/payment.ejs');
    });
    app.get('/viewmore', function (req, res) {
        res.render('../../frontend/general/views/viewmore.ejs');
    });

    app.post('/find', function (req, res) {
        console.log(req.body.pickup);
        console.log(req.body.pickup_date);
        console.log(req.body.dropoff);
        console.log(req.body.dropoff_date);


        var query_string = "INSERT INTO findCar (pickup,pickup_date,dropoff,dropoff_date) VALUES(?,?,?,?)"
        connection.query(query_string,[req.body.pickup, req.body.pickup_date, req.body.dropoff, req.body.dropoff_date], function (err, rows) {
          
            var query_string2 = "SELECT rent_form Where pickup_date = Pickup_date" 
            connection.query(query_string2[req.body.pickup_date], function (err, rows) {
            var query_string3 = "SELECT reserve_form where pickup_date = Pickup_form"
                connection.query(query_string3[req.body.pickup_date], function (err, rows) {
            
            
                
            if (err) {
                console.log(err);
            } else {
                console.log('saved');
                var test_message_success = true;
            }
            res.render('../../frontend/general/views/results.ejs', { test_message_success });
        });
    });

    });
});

    app.get('/carDetails', function (req, res) {

        var car_id = req.query.carid;

        var sql = "SELECT * FROM car_specification where Brand = ?, Model = ?, Year = ?, Capacity = ?, Airbags = ?,Transmission = ?, Rent_Price = ? ,service_idSP = ? ";

        connection.query(sql, [car_id], function (err, row_message_info) {
            if (err) {

            } else {
                res.render('../../frontend/general/views/results.ejs', { message_info: row_message_info[0] });
            }
        });
    });

    app.get('/carsSpecs', function (req, res) {
        var query = "SELECT * FROM car_specification";

        connection.query(query, function (err, pMes) {

            var newsPost = pMes.length;
            var pageSize = 10;

            var mess = [];
            var messagelist = [];
            var messagearray = [];

            for (var i = 0; i < newsPost; i++) {
                mess.push(pMes[i]);

            }
            res.render('../../frontend/general/views/results.ejs', { mess: mess });
        });
    });



app.post('/viewResults', function(req,res) {
    res.render('../../frontend/general/views/viewmore.ejs', { test_message_success });
});

}

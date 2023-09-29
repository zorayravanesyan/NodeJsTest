var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
require('dotenv').config(); 


const app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/', require('./routes/index'));
app.use('/api/user', require('./routes/users'));
app.use('/api/slider', require('./routes/sliders'));
app.use('/api/booking', require('./routes/bookings'));

module.exports = app;

// load .env data into process.env
require('dotenv').config();

// Web server config
const sassMiddleware = require('./lib/sass-middleware');
const express = require('express');
const morgan = require('morgan');

const PORT = process.env.PORT || 8080;
const app = express();

app.set('view engine', 'ejs');

// Load the logger first so all (static) HTTP requests are logged to STDOUT
// 'dev' = Concise output colored by response status for development use.
//         The :status token will be colored red for server error codes, yellow for client error codes, cyan for redirection codes, and uncolored for all other codes.
app.use(morgan('dev'));
app.use(express.urlencoded({ extended: true }));
app.use(
  '/styles',
  sassMiddleware({
    source: __dirname + '/styles',
    destination: __dirname + '/public/styles',
    isSass: false, // false => scss, true => sass
  })
);
app.use(express.static('public'));

// Separated Routes for each Resource
// Note: Feel free to replace the example routes below with your own
const userApiRoutes = require('./routes/users-api');
const widgetApiRoutes = require('./routes/widgets-api');
const usersRoutes = require('./routes/users');
const db = require('./db/connection');

// Mount all resource routes
// Note: Feel free to replace the example routes below with your own
// Note: Endpoints that return data (eg. JSON) usually start with `/api`
app.use('/api/users', userApiRoutes);
app.use('/api/widgets', widgetApiRoutes);
app.use('/users', usersRoutes);
// Note: mount other resources here, using the same pattern above

//parse incoming request
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Home page
// Warning: avoid creating more routes in this file!
// Separate them into separate routes files (see above).

//login page here for the routes
app.get('/', (req, res) => {
  res.render('index');
});

// /login/2
app.get('/users/:id', (req, res) => {
  //set cookie
  req.session.user_id = req.params.id;

  res.cookie('user_id', req.params.id);

  res.redirect('/users/:id/quizzes')
});

//view quiz list main route
app.get('/quiz', (req, res) => {
  res.render('quiz');
})


app.get('/qstart', (req, res) => {
  res.render('qstart');
})


app.get('/users/:id/quizzes', (req, res) => {
  res.render('quizzes');
})


//create quiz route
app.get('/quiz/create', (req, res) => {
  res.render('create');
})

//post route to receive data from create ajax POST request
app.post('/quiz', (req, res) => {
  // req.body will contain the data sent in the request
  const ownerId = req.params.id;
  const quizName = req.body.name;
  const level = Boolean(req.body.difficulty);
  const public = Boolean(req.body.public);

  const quizData = {
    id: req.session.user_id,
    owner_id: ownerId,
    quiz_name: quizName,
    level,
    public
  };

  const question = req.body.question;
  const choiceA = req.body.choice_a;
  const choiceB = req.body.choice_b;
  const choiceC = req.body.choice_c;
  const choiceD = req.body.choice_d;
  const answer = req.body.answer;
  console.log(req.body);
  // send a response back to the client
  res.send('Success');
});


app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`);
});

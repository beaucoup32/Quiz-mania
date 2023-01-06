// load .env data into process.env
require('dotenv').config();

// Web server config
const sassMiddleware = require('./lib/sass-middleware');
const express = require('express');
const morgan = require('morgan');
const cookieParser = require('cookie-parser');


const PORT = process.env.PORT || 8080;
const app = express();
const questionQueries = require('./db/queries/pull_questions');

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

app.use(cookieParser());
app.use(express.static('public'));
// Separated Routes for each Resource
// Note: Feel free to replace the example routes below with your own
const userApiRoutes = require('./routes/users-api');
const widgetApiRoutes = require('./routes/widgets-api');
const usersRoutes = require('./routes/users');
const db = require('./db/connection');

const userQuizzesApiRoutes = require('./routes/userQuizzes-api');
const QuizCategoryRoutes = require('./routes/quiz-categories-api');
const removeQuizRoutes = require('./routes/removeUserQuiz-api')
const { addQuiz, addQuestion } = require('./db/queries/quizzes');

// Mount all resource routes
// Note: Feel free to replace the example routes below with your own
// Note: Endpoints that return data (eg. JSON) usually start with `/api`
app.use('/api/users', userApiRoutes);
app.use('/api/widgets', widgetApiRoutes);
app.use('/users', usersRoutes);
// Note: mount other resources here, using the same pattern above
app.use('/api/user-quizzes', userQuizzesApiRoutes);
app.use('/api/quiz-categories', QuizCategoryRoutes);
app.use('/user/quizzes', removeQuizRoutes);

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

// /login
app.get('/user/:id', (req, res) => {
  //set cookie
  // req.session.user_id = req.params.id;

  res.cookie('user_id', req.params.id);

  res.redirect(`/user/${req.params.id}/quizzes`);
});

//view quiz list main route
app.get('/quiz', (req, res) => {
  res.render('quiz');
})


//pull question from seeds
//route pulls from all questions in data base
app.get('/qstart', (req, res) => {
  console.log("here")
  questionQueries.getQuestions()
    .then(questions => {
      console.log("hello", questions)
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({ error: err.message });
    });
});

// gets quiz short id and plays corresponding quiz
app.get('/quiz/:quiz_url', (req, res) => {

  const quizUrl = req.params.quiz_url;
  console.log(quizUrl);

  questionQueries.pullQuizByURL(quizUrl)
    .then(questions => {
      console.log('results: ', questions);
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({error: err.message })
    });
})

//route pulls from marvel questions in data base
app.get('/marvel', (req, res) => {
  questionQueries.getMarvelQuestions()
    .then(questions => {
      console.log('marvel route handler', questions)
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({ error: err.message });
    });
});

//route pulls from games questions in data base
app.get('/games', (req, res) => {
  questionQueries.getGamesQuestions()
    .then(questions => {
      console.log('games route handler', questions)
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({ error: err.message });
    });
});

//route pulls from movies questions in data base
app.get('/movies', (req, res) => {
  questionQueries.getMoviesQuestions()
    .then(questions => {
      console.log('games route handler', questions)
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({ error: err.message });
    });
});

//route pulls from tekken questions in data base
app.get('/tekken', (req, res) => {
  questionQueries.getTekkenQuestions()
    .then(questions => {
      console.log('tekken route handler', questions)
      res.render("qstart", {
        data: questions
      })
    })
    .catch(err => {
      res
        .status(500)
        .json({ error: err.message });
    });
});

app.get('/user/:id/quizzes', (req, res) => {

  if(!req.cookies.user_id) {
    res.redirect('/quiz')
  }

  res.render('quizzes');
})


//create quiz route
app.get('/quiz/create', (req, res) => {
  res.render('create');
})


//generate random id for quizURL
const characters =
  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
function generateRandomString() {
  let result = "";
  const length = 6;
  const charactersLength = characters.length;

  for (let i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

//post route to receive data from create ajax POST request
app.post('/quiz', (req, res) => {
  // req.body will contain the data sent in the request

  const ownerId = req.cookies.user_id;
  const category = req.body.category;
  const quizName = req.body.quizName;
  const level = Boolean(req.body.difficulty);
  const public = Boolean(req.body.public);
  const quizUrl = generateRandomString();

  const question = req.body.question;
  const choiceA = req.body.choice_a;
  const choiceB = req.body.choice_b;
  const choiceC = req.body.choice_c;
  const choiceD = req.body.choice_d;
  const answer = req.body.answer;

  const quizData = {
    owner_id: ownerId,
    category,
    quiz_name: quizName,
    level,
    public,
    quiz_url: quizUrl
  };

  // call the addQuiz function and pass it the quizData object
  addQuiz(quizData)
    .then((result) => {
      console.log(result);

      //extract id of inserted quiz from result
      const quizId = result.id;
      //create question object with data
      const questionData = {
        quiz_id: quizId,
        category,
        question,
        choice_a: choiceA,
        choice_b: choiceB,
        choice_c: choiceC,
        choice_d: choiceD,
        answer
      }

      addQuestion(questionData)
        .then((result) => {
          console.log(result);
        })
        .catch((error) => {
          console.error(error);
        });
    })
    .catch((error) => {
      console.error(error);
    });


  // console.log(req.body);
  // send a response back to the client
  res.send('Success');
});


app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`);
});

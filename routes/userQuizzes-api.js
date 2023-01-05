const cookieParser = require('cookie-parser');
const express = require('express');
const app = express();
app.use(cookieParser());
const router  = express.Router();
const userQueries = require('../db/queries/quizzes');


router.get('/', (req, res) => {

  // const dbOptions = req.cookie.id;
  const dbOptions = req.cookies.user_id;

  console.log('test', dbOptions);
  userQueries.getUserQuizzes(dbOptions)
    .then(quizzes => {
      res.json({ quizzes });
    })
    .catch(err => {
      res
        .status(400)
        .json({ error: err.message });
    });
});

module.exports = router;

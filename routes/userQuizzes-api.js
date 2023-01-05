const express = require('express');
const router  = express.Router();
const userQueries = require('../db/queries/quizzes');


router.get('/', (req, res) => {

  const dbOptions = req.cookies.user_id;

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

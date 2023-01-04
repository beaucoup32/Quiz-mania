const express = require('express');
const router  = express.Router();
const db = require('../db/connection');
const userQueries = require('../db/queries/quizzes')

router.get('/', (req, res) => {

  // const dbOptions = req.params.id;
  const dbOptions = 2;

  // console.log(req.params);
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

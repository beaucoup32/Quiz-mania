const express = require('express');
const router  = express.Router();
const {getQuizCategories } = require('../db/queries/quizzes');

router.get('/', (req, res) => {

  getQuizCategories()
    .then(categories => {
      res.json({categories});
    })
    .catch(err => {
      res.status(400)
        .json({error: err.message});
    });
});

module.exports = router;


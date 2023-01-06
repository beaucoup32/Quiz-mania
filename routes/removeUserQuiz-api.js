const express = require('express');
const router  = express.Router();
const {removeQuizFromUser } = require('../db/queries/quizzes');

router.post('/', (req, res) => {

  console.log(req.body);

  const user_id = Number(req.body.user_id);
  const quiz_name = req.body.quiz_name;

  removeQuizFromUser(user_id, quiz_name)
    .then(data => {
      console.log(data);
      res.status(200)
        .json({message: `${quiz_name} quiz deleted`});
    })
    .catch(err => {
      res.status(400)
        .json({error: err.message});
    });
});

module.exports = router;

const db = require('../connection');

const getUsers = () => {
  return db.query('SELECT * FROM users;')
    .then(data => {
      return data.rows;
    });
};

const getUserQuizzes = (owner_id) => {

  const dbQuery = `
  SELECT *
  FROM quizzes
  WHERE owner_id = $1;
  `;

  const dbOptions = [owner_id];

  return db.query(dbQuery, dbOptions)
    .then(data => {
      return data.rows;
    });
};

const getQuizCategories = () => {
  return db.query('SELECT DISTINCT category FROM quizzes;')
    .then(data => {
      return data.rows;
    });
}

const removeQuizFromUser = (user_id, quiz_name) => {
  const dbQuery = `
  UPDATE quizzes
  SET owner_id = 0
  WHERE owner_id = $1
  AND quiz_name = $2;
  `;
  const dbOptions = [user_id, quiz_name];

  return db.query(dbQuery, dbOptions)
    .then(data => {
      return data.rows
    });
};

const addQuestion = (questions) => {

  return db.query(`
  INSERT INTO questions (
    quiz_id,
    category,
    question,
    choice_a,
    choice_b,
    choice_c,
    choice_d,
    answer)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
  RETURNING *;
    `, [questions.quiz_id,
    questions.question,
    questions.category,
    questions.choice_a,
    questions.choice_b,
    questions.choice_c,
    questions.choice_d,
    questions.answer
  ])
    .then((result) => {
      return result.rows[0];
    })
    .catch((err) => {
      console.log(err.message);
    });
};

const addQuiz = (quiz) => {
  return db.query(`
  INSERT INTO quizzes (
    owner_id,
    category,
    quiz_name,
    level,
    public,
    quiz_url)
    VALUES ($1, $2, $3, $4, $5, $6)
  RETURNING *;
    `, [
    quiz.owner_id,
    quiz.category,
    quiz.quiz_name,
    quiz.level,
    quiz.public,
    quiz.quiz_url
  ])
    .then((result) => {
      return result.rows[0];
    })
    .catch((err) => {
      console.log(err.message);
    });
};

/////////
const addScore = (score) => {
  return db.query(`
  INSERT INTO scores (
    owner_id,
    category,
    quiz_name,
    level,
    public,
    quiz_url)
    VALUES ($1, $2, $3, $4, $5, $6)
  RETURNING *;
    `, [
    quiz.owner_id,
    quiz.category,
    quiz.quiz_name,
    quiz.level,
    quiz.public,
    quiz.quiz_url
  ])
    .then((result) => {
      // console.log(result.rows[0])
      return result.rows[0];
    })
    .catch((err) => {
      console.log(err.message);
    });

}

// const getUserScore = (score) => {
//   const dbQuery = `
//   SELECT score
//   FROM scores
//   WHERE player_id = $1
//   ORDER BY id DESC
//   LIMIT 1;
//   `;
//   const dbOptions = [player_id];

//   return db.query(dbQuery, dbOptions)
//     .then(data => {
//       return data.rows;
//     });
// };

// const getUrl = (url) => {
//   const dbQuery = ``
// }


module.exports = {
  getUsers,
  addQuestion,
  addQuiz,
  getUserQuizzes,
  getQuizCategories,
<<<<<<< HEAD
=======
  removeQuizFromUser,
>>>>>>> 689fdff6b22a60eddef302f722985536b067d223
  // getUserScore
};





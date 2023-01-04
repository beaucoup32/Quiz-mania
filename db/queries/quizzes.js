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
  return db.query('SELECT category FROM quizzes;')
    .then(data => {
      return data.rows;
    });
}

module.exports = { getUsers, getUserQuizzes };




// const addQuiz = (quiz) => {

//   return pool.query(`
//   INSERT INTO quizzes`)
// }

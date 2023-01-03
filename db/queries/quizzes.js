const db = require('../connection');

const getUsers = () => {
  return db.query('SELECT * FROM users;')
    .then(data => {
      return data.rows;
    });
};

module.exports = { getUsers };




// const addQuiz = (quiz) => {

//   return pool.query(`
//   INSERT INTO quizzes`)
// }

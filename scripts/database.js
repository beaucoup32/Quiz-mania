//query db inserts

const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'midterm'
});


const addQuiz = (quiz) => {

  return pool.query(`
  INSERT INTO quizzes`)
}

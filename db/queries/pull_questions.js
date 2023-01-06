const db = require('../connection');


//functions for data base queries based on user selection in quiz game

const getQuestions = () => {
  return db.query('select * from questions order by random() limit 5;')
    .then(data => {
      return data.rows;
    });
};


const getMarvelQuestions = () => {
  return db.query("select * from questions WHERE category LIKE 'marvel%' order by random()   limit 5;")
    .then(data => {
      return data.rows;
    });
};


const getGamesQuestions = () => {
  return db.query("select * from questions WHERE category LIKE 'games%' order by random()   limit 5;")
    .then(data => {
      return data.rows;
    });
};


const getTekkenQuestions = () => {
  return db.query("select * from questions WHERE category LIKE 'tekken%' order by random()   limit 5;")
    .then(data => {
      return data.rows;
    });
};

module.exports = { getQuestions, getMarvelQuestions, getGamesQuestions, getTekkenQuestions};



// const db = require('../connection');

// const getQuestions = () => {
//   return db.query('SELECT * FROM questions;')
//     .then(data => {
//       return data.rows;
//     });
// };

// module.exports = { getQuestions };

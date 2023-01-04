const db = require('../connection');

const getQuestions = () => {
  return db.query('select * from questions order by random() limit 1;')
    .then(data => {
      return data.rows;
    });
};


const getMarvelQuestions = () => {
  return db.query("select * from questions WHERE category LIKE 'marvel' order by random()   limit 1;")
    .then(data => {
      return data.rows;
    });
};

module.exports = { getQuestions, getMarvelQuestions};



// const db = require('../connection');

// const getQuestions = () => {
//   return db.query('SELECT * FROM questions;')
//     .then(data => {
//       return data.rows;
//     });
// };

// module.exports = { getQuestions };

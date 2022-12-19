/*
 * All routes for Users are defined here
 * Since this file is loaded in server.js into /users,
 *   these routes are mounted onto /users
 * See: https://expressjs.com/en/guide/using-middleware.html#middleware.router
 */

const express = require('express');
const router  = express.Router();

router.get('/', (req, res) => {
  res.render('users');
});
module.exports = router;



//for login and register when you want to setup the /login2 or login/5 etc
//router.get and app.get are similar but using a different middleware router that is like an express package express.Router() instead of app.get may do sanitization like cleaning routes same thing as app.get

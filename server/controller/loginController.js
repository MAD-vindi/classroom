const mysql = require('mysql');
const {stringify} = require('querystring');

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// getting day and timeframe.
const {day, timeframe} = require("./dayAndTime");

let Query_0=`SELECT * FROM status where Day LIKE ? AND ${timeframe} LIKE ?`

exports.view = (req, res) => {
  if (req.session.loggedin) {
    pool.getConnection((err, connection) => {
      if (err) {
        throw err;
      }
    if(timeframe!==""){
    connection.query(
      Query_0,
      [day, '0'],
      (err, status) => {
        if(!err){
          res.render('update', {status});
        }else{
          console.log(err);
        } 
      }
    );
  }else{
    res.render("update");
  }
    });
  } else {
    res.render('login');
  }
};

exports.form = (req, res) => {
  let username = req.body.username;
  let password = req.body.password;

  pool.getConnection((err, connection) => {
    if (err) {
      throw err;
    }

    connection.query(
      'SELECT * FROM users WHERE username LIKE ? and password LIKE ?',
      [username, password],
      (err, rows) => {
        connection.release();
        if (!err) {
          if (rows[0] != undefined) {
            if(timeframe!==""){
            connection.query(
              Query_0,
              [day, '0'],
              (err, status) => {
                req.session.loggedin = true;
                req.session.username = username;
                res.render('update', {status});
              }
            );
          }else{
            res.render("update");
          }
          } else {
            res.render('login');
          }
        } else {
          throw err;
        }
      }
    );
  });
};

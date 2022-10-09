const mysql = require('mysql');
const { stringify } = require('querystring');

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

exports.view = (req, res) => {
  res.render('login');
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
            connection.query(
              'SELECT * FROM status WHERE Day LIKE ? AND Afternoon LIKE ?',
              ['Monday', '0'],
              (err, status) => {
                res.render('update', { status });
              }
            );
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

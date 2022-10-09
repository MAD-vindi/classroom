const mysql = require('mysql');
const { stringify } = require('querystring');

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

exports.format = (req, res) => {
  let sort = req.body.check;
  pool.getConnection((err, connection) => {
    if (err) {
      throw err;
    }
    console.log('connected to database as ID :' + connection.threadId);
    connection.query(
      `SELECT * FROM status where Day LIKE ? AND Morning LIKE ? AND Block LIKE ?`,
      ['Monday', '0', sort],
      (err, rows) => {
        connection.release();
        if (!err) {
          //console.log(Object.keys(rows[0]));
          res.render('home', { rows });
        } else {
          throw err;
        }
      }
    );
  });
};

exports.view = (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) {
      throw err;
    }
    console.log('connected to database as ID y :' + connection.threadId);
    connection.query(
      `SELECT * FROM status where Day LIKE ? AND Morning LIKE ?`,
      ['Monday', '0'],
      (err, rows) => {
        connection.release();
        if (!err) {
          //console.log(Object.keys(rows[0]));
          res.render('home', { rows });
        } else {
          throw err;
        }
      }
    );
  });
};

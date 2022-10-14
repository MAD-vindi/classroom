const mysql = require('mysql');
const { stringify } = require('querystring');

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// getting day and timeframe.
const {day, timeframe} = require("./dayAndTime");

let Query_0=`SELECT * FROM status where Day LIKE ? AND ${timeframe} LIKE ?`;
let Query_1=`SELECT * FROM status where Day LIKE ? AND ${timeframe} LIKE ? AND Block LIKE ?`;

exports.format = (req, res) => {
  let sort = req.body.check;
  pool.getConnection((err, connection) => {
    if (err) {
      throw err;
    }
    console.log('connected to database as ID :' + connection.threadId);
    if(timeframe !== ""){
    connection.query(
      Query_1,
      [day, '0', sort],
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
  }else{
    res.render("home");
  }
  });
};

exports.view = (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) {
      throw err;
    }
    console.log('connected to database as ID y :' + connection.threadId);
    if(timeframe!==""){
    connection.query(
      Query_0,
      [day, '0'],
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
  }else{
    res.render("home");
  }
  });
};

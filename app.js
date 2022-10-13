//Importing required libraries
const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const session = require('express-session');
const app = express();
const port = process.env.PORT || 8000;

app.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));

//Initialing server with public profile
app.use(express.static('public'));

// body parser config
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

//Initializing server with handlebars
app.engine('hbs', exphbs.engine({ extname: 'hbs' }));
app.set('view engine', 'hbs');

require('dotenv').config();

//Creating pool connection

const pool = mysql.createPool({
  connectionLimit: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

pool.getConnection((err, connection) => {
  if (err) {
    throw err;
  }
});

/*app.get("/", (req, res) => {
  res.render("home");
});*/



const routes = require('./server/routes/route');

app.get('/', routes);
app.post('/', routes);

app.get('/login', routes);
app.post('/login', routes);

app.get("/logout", routes);

app.get('/update', routes);
app.post('/updates', routes);

app.get('/success', routes);

app.get('/failure', routes);



/*
app.get("/update", (req, res) => {
  res.render("update");
});

app.get("/login", (req, res) => {
  res.render("login");
});

app.get("/success", (req, res) => {
  res.render("success");
});

app.get("/failure", (req, res) => {
  res.render("failure");
});

app.get('/logout', (req, res)=>{
  req.session.destroy(function(err){
    if(!err){
      console.log('Destroyed session');
    }else{
      console.log(err);
    }
    res.redirect('/');
  });
});
*/
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

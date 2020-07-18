const mysql = require('mysql');

const { host, user, password, database } = require('./db_config');

const db = mysql.createPool({
  host,
  user,
  password,
  database
});

module.exports = db;

const pg = require('pg');
const config = {
    user: process.env.USERDB,
    database: process.env.DB,
    password: process.env.PASWORDDB,
    host: 'localhost',
    port: 5432,
    idleTimeoutMillis: 30000
  }

  const cliente = new pg.Pool(config)

  module.exports = cliente;

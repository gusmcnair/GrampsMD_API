require('dotenv').config();

module.exports = {
  "migrationDirectory": "migrations",
  "driver": "pg",
  "port": 4000,
  "connectionString": process.env.DB_URL,
}

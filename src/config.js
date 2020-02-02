module.exports = {
    API_ENDPOINT: 'http://localhost:8000/api',
    PORT: process.env.PORT || 8000,
    NODE_ENV: process.env.NODE_ENV || 'development',
    DB_URL: process.env.DB_URL || 'postgresql://grampsmd@localhost/grampsmd',
  }
module.exports = {
    API_ENDPOINT: 'http://localhost:8000/api',
    PORT: process.env.PORT || 8000,
    API_BASE_URL: process.env.REACT_APP_API_BASE_URL || 'http://localhost:3000/api',
    NODE_ENV: process.env.NODE_ENV || 'development',
    DATABASE_URL: process.env.DATABASE_URL || 'postgresql://dunder_mifflin@localhost/grampsmd',
    CLIENT_ORIGIN: 'https://grampsmdclient-iljjlckxv.now.sh/'
  }

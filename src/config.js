module.exports = {
    API_ENDPOINT: 'http://localhost:8000/api',
    PORT: process.env.PORT || 8000,
    NODE_ENV: process.env.NODE_ENV || 'development',
    DATABASE_URL: process.env.DATABASE_URL || 'postgresql://dunder_mifflin@localhost/blogful',
    CLIENT_ORIGIN: 'https://grampsmdclient-htzi5p41n.now.sh/'
  }
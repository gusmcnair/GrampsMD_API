require('dotenv').config()
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')
const app = express()
const ailmentsRouter = require('./ailments/ailments-router')
const symptomsRouter = require('./symptoms/symptoms-router')
const logger = require('./logger')
const { CLIENT_ORIGIN } = require('./config')

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

const morganSetting = process.env.NODE_ENV === 'production' ? 'tiny' : 'common'
  app.use(morgan(morganSetting))
  app.use(helmet())
  
  /*app.use(
    cors({
        origin: CLIENT_ORIGIN
    })
);*/

app.use(cors())


    app.use('/api/ailments', ailmentsRouter)

    app.use('/api/symptoms', symptomsRouter)

   app.use(function errorHandler(error, req, res, next) {
       let response
       if (NODE_ENV === 'production') {
         response = { error: { message: 'blerver error' } }
       } else {
         console.error(error)
         response = { message: error.message, error }
       }
       res.status(500).json(response)
     })

module.exports = app

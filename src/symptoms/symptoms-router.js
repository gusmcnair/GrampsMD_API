const express = require('express')
const SymptomsService = require('./symptoms-service')

const symptomsRouter = express.Router()

symptomsRouter
    .get('/', (req, res, next) => {
        const knexInstance = req.app.get('db')
        SymptomsService.getSymptoms(knexInstance)
            .then(symptoms => {
                res.json(symptoms)
            })
            .catch(next)
    })

    module.exports = symptomsRouter;
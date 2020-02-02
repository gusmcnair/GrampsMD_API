const express = require('express')
const AilmentsService = require('./ailments-service')
//const jsonBodyParser = express.json()

const ailmentsRouter = express.Router();

function getDisease(querydata, ailments){
    if (querydata.symptoms.length > 15 && typeof querydata.symptoms !== 'string'){
        return ailments[8]
    } else if (querydata.symptoms.length > 6 && typeof querydata.symptoms !== 'string'){
        return ailments[0]
    } else if(querydata.symptoms.includes('weight loss') && querydata.symptoms.includes('sneezing')){
        return ailments[15]
    } else if(querydata.symptoms.includes('toothache')){
        return ailments[11]
    } else if((querydata.symptoms.includes('sneezing') || querydata.symptoms.includes('coughing')) && querydata.symptoms.includes('fever')){
        return ailments[2]
    } else if(querydata.symptoms.includes('fever') && querydata.symptoms.includes('shaking')){
        return ailments[3]
    } else if(querydata.genders === ('female') && querydata.symptoms.includes('weight gain')){
        return ailments[1]
    } else if(querydata.genders === ('male') && ((querydata.symptoms.includes('heartache')) || (querydata.symptoms.includes('intense loneliness')))){
        return ailments[14]
    } else if((querydata.symptoms.includes('ennui') && querydata.symptoms.includes('weight gain')) || ((querydata.symptoms.includes('heartache')) && querydata.symptoms.includes('weight gain')) || ((querydata.symptoms.includes('heartache')) && querydata.symptoms.includes('ennui'))){
        return ailments[9]
    } else if(querydata.genders === ('female') && (querydata.symptoms.includes('ennui') || querydata.symptoms.includes('intense loneliness') || querydata.symptoms.includes('heartache'))){
        return ailments[10]
    } else if(querydata.improv === ('yes')){
        return ailments[7]
    } else if(querydata.symptoms.includes('painful urination')){
        return ailments[12]
    } else if(querydata.symptoms.includes('vomiting') && querydata.symptoms.includes('ennui')){
        return ailments[13]
    } else if(querydata.symptoms.includes('vomiting') || querydata.symptoms.includes('shaking')){
        return ailments[4]
    } else if(querydata.symptoms.includes('fainting')){
        return ailments[6]
    } else {return ailments[5]}
}

ailmentsRouter
    .get('/', (req, res, next) => {
        const knexInstance = req.app.get('db')
        AilmentsService.getAilments(knexInstance)
            .then(ailments => {
                res.json(getDisease(req.query, ailments))
            })
.catch(next)
}) 

module.exports = ailmentsRouter;
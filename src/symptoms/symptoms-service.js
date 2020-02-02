const SymptomsService = {
    getSymptoms(knex){
        return knex.select('*').from('symptoms')
    },
}

module.exports = SymptomsService
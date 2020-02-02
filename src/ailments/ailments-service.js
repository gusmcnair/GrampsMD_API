const AilmentsService = {
    getAilments(knex){
        return knex.select('*').from ('ailments')
    },


}

module.exports = AilmentsService

const app = require('../src/app')
const knex = require('knex')


describe('Endpoints', function() {
  let db


  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    })
    app.set('db', db)
  })

  it('symptoms responds with full list of symptoms', () => {
    return supertest(app)
      .get('/api/symptoms')
      .expect(200)
      .expect(res => {
        console.log(res)
        expect((res.body[0]).to.eql('headache'))
      })
  })

  it('symptoms responds with full list of symptoms', () => {
    return supertest(app)
      .get('/api/ailments?symptoms=headache&symptoms=toothache&symptoms=vomiting&genders=female&improv=no')
      .expect(200)
      .expect(200)
      .expect(res => {
        console.log(res)
        {(res.body.title).to.eql('Time to get dentures')}})
      })
})

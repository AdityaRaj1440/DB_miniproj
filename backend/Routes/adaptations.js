const router= require('express').Router()
const db= require('./database')

router.get('/', (req, res) => {
    let sql=  `select * from Adaptations`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json(result)
    })
})

router.get('/name/:name', (req, res) => {
    let sql= `select * from Adaptations where Name like '%${req.params.name}%'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        res.json(result)
    })
})

router.get('/name/exact/:name', (req, res) => {
    let sql= `select * from Adaptations where Name ='${req.params.name}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match found')
        res.json(result)
    })
})

module.exports = router
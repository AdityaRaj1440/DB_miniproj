const router = require('express').Router()
const db = require('./database')

router.get('/', (req, res) => {
    let sql=  `select * from Novels`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No novels found!!')
        res.json(result)
    })
})

router.get('/name/:name', (req, res) => {
    let sql= `select * from Novels where Name= '${req.params.name}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        res.json(result)
    })
})


router.get('/id/:id', (req, res) => {
    let sql= `select *, N.Name as Name, G.Name as Genre from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id inner join Genre G on NG.Genre_id= G.Genre_id where N.Book_id= ${parseInt(req.params.id)}`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given id')
        res.json(result)
    })
})

router.get('/origin/:origin', (req, res) => {
    let sql= `select * from Novels where Origin= '${req.params.origin}' `
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end(`No ${req.params.origin} novel found`)
    })
})

module.exports = router
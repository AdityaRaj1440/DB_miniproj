const router = require('express').Router()
const db = require('./database')
const mutate= require('../functions/MutateJson')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select *, N.Name as Name, G.Name as Genres from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id
    inner join Genre G on NG.Genre_id= G.Genre_id`
    console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No novels found!!')
        res.json(mutate(result))
    })
})

router.get('/name/:name', (req, res) => {
    let sql= `select *, N.Name as Name, G.Name as Genres from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id
    inner join Genre G on NG.Genre_id= G.Genre_id where N.Name= "${req.params.name}"`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        res.json(merge(result))
    })
})


router.get('/id/:id', (req, res) => {
    let sql= `select *, N.Name as Name, G.Name as Genres from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id
    inner join Genre G on NG.Genre_id= G.Genre_id where N.Book_id= ${parseInt(req.params.id)}`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given id')
        res.json(merge(result))
    })
})

router.get('/origin/:origin', (req, res) => {
    let sql= `select *, N.Name as Name, G.Name as Genres from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id
    inner join Genre G on NG.Genre_id= G.Genre_id where Origin= '${req.params.origin}' order by N.Book_id`
    console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end(`No ${req.params.origin} novel found`)
        res.json(mutate(result))
    })
})

router.post('/insertNovel', (req, res) => {
    
    const json= req.body
    //console.log(json);
    const genre= json.Genres
    console.log(genre.length);
    let sql= `insert into Novels values (${json.Book_id},"${json.Name}","${json.Status}","${json.Origin}",${json.Total_Chapter},${json.Release_Date},"${json.Last_Updated}","${json.Author_Name}","${json.Url}","${json.Image}","${json.Synopsis}");`
    for(let i=0; i<genre.length; i++)
    {
        sql+=`insert into Novel_Genre values (${genre[i]},${json.Book_id});`
    }
    //console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end("Primary key or reference integrity violated")
        res.send('record inserted successfully')
    }) 
})

module.exports = router
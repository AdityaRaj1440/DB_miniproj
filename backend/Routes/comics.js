const router= require('express').Router()
const db= require('./database')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select *, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
               inner join Genre G on CG.Genre_id= G.Genre_id`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No comics found!!')
        
        let json =  result[0];
        let genre= []
        for(let i=0; i<result.length; i++)
        {
            genre.push(result[i].Genres)
        }
        json.Genres= genre.join(',')
        res.json(json)
    })
})

router.use('/name/:name', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id and C.Name= '${req.params.name}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        // let json =  result[0];
        // const genre= []
        // for(let i=0; i<result.length; i++)
        // {
        //     genre.push(result[i].Genres)
        // }
        // delete json.Genre_id
        // json.Genres= genre.join(',')
        res.json(merge(result))
    })
})

router.get('/id/:origin/:id', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id and C.Comic_id= ${parseInt(req.params.id)} and C.Origin_id= '${req.params.origin}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given id')
        // let json =  result[0];
        // const genre= []
        // for(let i=0; i<result.length; i++)
        // {
        //     genre.push(result[i].Genres)
        // }
        // delete json.Genre_id
        // json.Genres= genre.join(',')
        res.json(merge(result))
    })
})

router.get('/origin/:origin', (req, res) => {
    let sql= `select * from Comics where Origin_id= '${req.params.origin}' `
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end(`No ${req.params.origin} comic found`)
        res.json(result)
    })
})

module.exports= router
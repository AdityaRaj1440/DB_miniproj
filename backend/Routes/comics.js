const router= require('express').Router()
const db= require('./database')
const merge= require('../functions/GenreMerge')
const mutate= require('../functions/MutateJson')

//To fetch all comics
router.get('/', (req, res) => {
    let type= req.params.type;
    let sql=  `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No comics found!!')
        //console.log(result.length)
        res.json(mutate(result))
    })
})

//To fetch a specific Comic on the basis of its name
router.use('/name/:name', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id and C.Name= '${req.params.name}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        res.json(merge(result))
    })
})

//To fetch a specific Comic on the basis of its id
router.get('/id/:origin/:id', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id and C.Comic_id= ${parseInt(req.params.id)} and C.Origin_id= '${req.params.origin}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given id')
        res.json(merge(result))
    })
})

//To fetch list of comics of specific origin
router.get('/origin/:origin', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and 
    C.Origin_id= CG.Origin_id inner join Genre G on CG.Genre_id= G.Genre_id and C.Origin_id= "${req.params.origin}" 
    order by C.Origin_id, C.Comic_id`
    //console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end(`No ${req.params.origin} comic found`)
        res.json(mutate(result))
    })
})

//To insert a new comic details
router.post('/insertComic', (req, res) => {
    
    const json= req.body
    const genre= json.Genres
    let sql= `insert into Comics values ("${json.Origin_id}",${json.Comic_id},"${json.Name}","${json.Status}",${json.Total_Chapter},"${json.Other_Media}","${json.Url}","${json.Image}","${json.Synopsis}");`
    for(let i=0; i<genre.length; i++)
    {
        sql+=`insert into Comic_Genre values ("${json.Origin_id}",${json.Comic_id},${genre[i]});`
    }
    console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.send(err.sqlMessage)
        else
        res.send('record inserted successfully')
    }) 
})

module.exports= router
const router= require('express').Router()
const db= require('./database')
const mutate= require('../functions/AdaptationMerge')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id;`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json(mutate(result))
    })
})


router.get('/name/:name', (req, res) => {
    let sql= `select *, A.Name as Name, G.Name as Genres from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id  inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id where A.Name like '%${req.params.name}%'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match for the given name')
        res.json(mutate(result))
    })
})

router.get('/name/exact/:name', (req, res) => {
    let sql= `select *, A.Name as Name, G.Name as Genres from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id  inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id where A.Name ='${req.params.name}'`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No match found')
        console.log("Result is:", mutate(result))
        res.json(mutate(result))
    })
})

router.post('/insertAdaptation', (req, res) => {
    
    const json= req.body
    const genre= json.Genres
    let sql= `insert into Adaptations values ("${json.Type}",${json.Adapt_id},"${json.Origin_id}",${json.Comic_id},"${json.Name}","${json.Image}","${json.Url}","${json.Rating}","${json.Release_Date}");`
    if(json.Type==="ANI")
      sql+= `insert into Anime values ("${json.Type}", ${json.Adapt_id}, "${json.Production_House}", ${json.Total_Episodes}, ${json.No_of_Seasons}, "${json.mode}");`
    else if(json.Type==="LIV")
      sql+= `insert into Live values ("${json.Type}", ${json.Adapt_id}, "${json.Director}", "${json.Runtime}", "${json.mode}");`
    console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.send(err.sqlMessage)
        else
        res.send('record inserted successfully')
    }) 
})



module.exports = router
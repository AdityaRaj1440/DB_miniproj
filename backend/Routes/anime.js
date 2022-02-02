const router= require('express').Router()
const db= require('./database')
const mutate= require('../functions/AdaptationMerge')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id;`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json(mutate(result))
    })
})

router.get('/name/:name', (req, res) => {
    let sql= `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id and A.Name like "${req.params.name}";`
    console.log(req.params.name);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json(merge(result))
    })
})

module.exports= router
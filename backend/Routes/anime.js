const router= require('express').Router()
const db= require('./database')
const mutate= require('../functions/AdaptationMerge')
const merge= require('../functions/GenreMerge')

let sql1= `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A natural join Comic_Genre CG natural join Genre G natural join (Select Origin_id, Comic_id, Synopsis from comics) as C natural join Anime ANI;`
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

router.get('/production/:production', (req, res) => {
    let sql= `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id and ANI.Production_House like "%${req.params.production}%";`
    db.query(sql, (err, result) => {
        if(err)
        res.status(404).end('No matches found for the mentioned production house.');
        res.json(mutate(result));
    })
})

module.exports= router
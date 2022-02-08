const router= require('express').Router()
const db= require('./database')
const mutate= require('../functions/AdaptationMerge')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select  Distinct M.name as Song_Name, MA.Name Artist_name, A.Name as Source, M.* from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id inner join Music M on M.Adapt_id= ANI.Adapt_id and M.Type= ANI.Type
    inner join Music_Artists MA on M.Artist_id= MA.Artist_id`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json((result))
    })
})

router.get('/name/:name', (req, res) => {
    let sql= `select  Distinct M.name as Song_Name, MA.Name Artist_name, A.Name as Source, M.* from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id inner join Music M on M.Adapt_id= ANI.Adapt_id and M.Type= ANI.Type
    inner join Music_Artists MA on M.Artist_id= MA.Artist_id where M.name like "%${req.params.name}%"`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json((result))
    })
})

router.get('/singer/:singer', (req, res)=> {
    let sql= `select  Distinct M.name as Song_Name, MA.Name Artist_name, A.Name as Source, M.* from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id inner join Music M on M.Adapt_id= ANI.Adapt_id and M.Type= ANI.Type
    inner join Music_Artists MA on M.Artist_id= MA.Artist_id where MA.name like "%${req.params.singer}%"`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json((result))
    })
})

module.exports= router;
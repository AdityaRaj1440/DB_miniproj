const router= require('express').Router()
const db= require('./database')
const mutate= require('../functions/AdaptationMerge')
const merge= require('../functions/GenreMerge')

router.get('/', (req, res) => {
    let sql=  `select M.Music_id, M.Artist_id, ART.Artist_id from Music_Artist ART, Music M, Anime ANI, Adaptation A where M.Artist_id= ART.Artist_id and 
     and (M.Adapt_id,M.Type) = (Select Adapt_id, Type from Anime natural join Adaptations) as G`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('No adaptations found!!')
        res.json(mutate(result))
    })
})

module.exports= router;
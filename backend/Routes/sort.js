const router= require('express').Router()
const db=  require('./database')

router.get('/:type/alphabetical/:order', (req, res) => {
     let sql= `select * from ${req.params.type} order by name ${req.params.order}`
     db.query(sql, (err, result) => {
         if(err)
         res.status(400).end('Some issue occured')
         res.json(result)
     })
})

router.get('/adaptations/rating/:order', (req,res) => {
    let sql= `select * from adaptations order by rating ${req.params.order}`;
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('Some issue occured');
        res.json(result)
    })
})

router.get('/:type/totalChapters/:order', (req, res) => {
    let sql= `select * from ${req.params.type} order by Total_Chapters ${req.params.order}`;
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end('Some issue occured');
        res.json(result)
})
})
module.exports= router
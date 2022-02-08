const express = require('express');
const cors= require('cors');
const { DEC8_BIN } = require('mysql/lib/protocol/constants/charsets');
const app= express()
const db= require('./Routes/database')

app.use(cors())
app.use(express.json())

app.use('/showGenre', require('./Routes/genre'))


app.use('/Novels', require('./Routes/novels'))

app.use('/Comics', require('./Routes/comics'))

app.use('/sort', require('./Routes/sort'))

app.use('/Adaptations', require('./Routes/adaptations'))

app.use('/Anime', require('./Routes/anime'))

app.use('/Live', require('./Routes/liveAction'))

app.use('/Music', require('./Routes/music'))

app.get('/adminLogin/:username/:password', (req, res) => {
    let sql= `update admin set status =1 where username= "${req.params.username}" and password= "${req.params.password}";
              select (case
              when status= 0 then "Admin login failed"
              else "Admin login successful"
              end) as Result from admin;`
              console.log(sql);
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end("Some Error Occured while login");
        res.send(result[1])
    })
})

app.get('/adminLogout', (req, res) => {
    let sql= `update admin set status=0;
              select "Logout successful!" as Response;`
    db.query(sql, (err, result) => {
        if(err)
        res.status(400).end("logout failed");
        res.send(result)
    })
})

app.listen('3000', () => {
    console.log('Server started on port 3000');
});

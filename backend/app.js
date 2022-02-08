const express = require('express');
const cors= require('cors');
const { DEC8_BIN } = require('mysql/lib/protocol/constants/charsets');
const app= express()
const db= require('./Routes/database')
require("dotenv").config();
const port = process.env.PORT || 3000;

//Establishing connection between backend and frontend
app.use(cors())
app.use(express.json())

//To list all genre and filter media
app.use('/showGenre', require('./Routes/genre'))

//To fetch result related to novels
app.use('/Novels', require('./Routes/novels'))

//To fetch result related to comics
app.use('/Comics', require('./Routes/comics'))

//To fetch result of media contents after sorting
app.use('/sort', require('./Routes/sort'))

//To fetch result related to Adaptations of comic
app.use('/Adaptations', require('./Routes/adaptations'))

//To fetch result related to Anime
app.use('/Anime', require('./Routes/anime'))

//To fetch result related to Live Adaptations 
app.use('/Live', require('./Routes/liveAction'))

//To fetch result related to Music
app.use('/Music', require('./Routes/music'))

//Login feature for admin
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

//Logout feature for admin
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

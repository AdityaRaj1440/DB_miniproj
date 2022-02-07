const express = require('express');
const cors= require('cors');
const app= express()

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

app.listen('3000', () => {
    console.log('Server started on port 3000');
});

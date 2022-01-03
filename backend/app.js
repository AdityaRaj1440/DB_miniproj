const express = require('express');
const mysql= require('mysql');

//create connection
const db= mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'password',
    database : 'miniproj',
    multipleStatements: true
});

//connect
db.connect((err) => {
    if(err){
        throw err;
    }
    console.log("MySQL Connected...");
});

const app = express();


//To show all Comics
app.get('/showComics', (req, res) => {
  let sql= `select * from COMICS;
            alter view Comic_Result as select * from Comics`;
  db.query(sql, (err,result) => {
      if(err) throw err;
      res.send(result);
      console.log('All Comics Displayed');
  })
});

//To Show all Novels
app.get('/showNovels', (req,res) => {
    let sql= 'select * from NOVELS';
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result);
        console.log('All Novels Displayed...');
    });
});

//To Show all Genres
app.get('/showGenres', (req,res) => {
    let sql= 'select * from GENRE';
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result);
        console.log('All Genre Displayed...');
    });
});

//Novel Filter
const novelQuer= `alter view selectedGenre as select Genre_id from GENRE where name in ('Fantasy');
                  alter view distinctBook as select distinct(Book_id) from Novel_genre;
                  alter view BookGenre as select * from distinctBook cross join selectedGenre;
                  alter view difference as select Book_id,Genre_id from BookGenre where (Book_id,Genre_id) not in (Select Book_id,Genre_id from Novel_Genre);
                  alter view Result as select Distinct(Book_id) from Novel_Genre where Book_id not in (select Book_id from Difference);
                  alter view Novel_Result as select * from Novels where Book_id in (select * from Result);`;

//To show Filtered Novels
app.get('/filterNovel', (req,res) => {
    let sql= novelQuer;
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result[5]);
        console.log("Novels Shown...");
    });
});


//Comic Filter
const comicQuer= `alter view selectedGenre as select Genre_id from GENRE where name in ('Tragedy','Fantasy');
                  alter view distinctComic as select distinct Origin_id, Comic_id from COMICS;
                  alter view MangaGenre as select * from distinctComic cross join selectedGenre;
                  alter view ComicDifference as select * from MangaGenre where (Origin_id,Comic_id,Genre_id) not in (Select Origin_id,Comic_id,Genre_id from Comic_Genre);
                  alter view ComicResult as select Distinct Origin_id,Comic_id from Comic_genre where (Origin_id,Comic_id) not in (Select Origin_id, Comic_id from ComicDifference);
                  alter view Comic_Result as select * from Comics where (Origin_id,Comic_id) in (Select * from ComicResult);`;

//To Show filtered Comics
app.get('/filterComic', (req,res) => {
    let sql= comicQuer+"Select * from Comic_Result";
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log("Novels fetched");
    });
});

//To show Comics by origin
app.get('/filterComicByOrigin', (req,res) => {
    let sql= 'Select Name from Comic_Result where Origin_id= "CHN";';
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result);
        console.log('Comic by origin filtered');
    });
});


//To show Novels By origin
app.get('/filterNovelByOrigin', (req,res) => {
    let sql= novelQuer+'Select Name from Novel_Result where Origin= "Korean"';
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log('Novels filtered by origin');
    });
});

app.get('/sortComicByAlphabeticalDesc', (req, res) => {
    let sql= 'Select * from Comic_Result order by name desc';
    db.query(sql, (err, result) =>{
        if(err) throw err;
        res.send(result);
        console.log('Comics filtered on basis of alphabetical order desc');
    });
});

app.get('/sortComicByAlphabeticalAsc', (req,res) => {
    let sql= 'Select * from Comic_Result order by name asc';
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result);
        console.log('Comics filter on basis of alphabetical order asc');
    });
});

app.get('/showCompletedComics', (req,res) => {
    let sql= 'Select * from Comic_Result where status = "Completed"';
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result);
        console.log('Comics filtered')
    });
})

app.listen('3000', () => {
    console.log('Server started on port 3000');
});

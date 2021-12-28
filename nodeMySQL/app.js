const express = require('express');
const mysql= require('mysql');

//create connection
const db= mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'Iitjee@2019',
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

//list of query for division
const requests= ['/showComics','/showNovels','/showGenres','/filterNovel','/filterComic']


//To show all Comics
app.get(requests[0], (req, res) => {
  let sql= 'select * from COMICS';
  db.query(sql, (err,result) => {
      if(err) throw err;
      res.send(result);
      console.log('All Comics Displayed');
  })
});

//To Show all Novels
app.get(requests[1], (req,res) => {
    let sql= 'select * from NOVELS';
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result);
        console.log('All Novels Displayed...');
    });
});

//To Show all Genres
app.get(requests[2], (req,res) => {
    let sql= 'select * from GENRE';
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result);
        console.log('All Genre Displayed...');
    });
});

//Novel Filter
const novelQuer= `alter view selectedGenre as select Genre_id from GENRE where name in ('Action','Fantasy');
                  alter view distinctBook as select distinct(Book_id) from Novel_genre;
                  alter view BookGenre as select * from distinctBook cross join selectedGenre;
                  alter view difference as select Book_id,Genre_id from BookGenre where (Book_id,Genre_id) not in (Select Book_id,Genre_id from Novel_Genre);
                  alter view Result as select Distinct(Book_id) from Novel_Genre where Book_id not in (select Book_id from Difference);
                  select * from Novels where Book_id in (select * from Result);`;

//To show Filtered Novels
app.get(requests[3], (req,res) => {
    let sql= novelQuer;
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result[5]);
        console.log("Novels Shown...");
    });
});


//Comic Filter
const comicQuer= `alter view selectedGenre as select Genre_id from GENRE where name in ('Shounen','Fantasy');
                  alter view distinctComic as select distinct Origin_id, Comic_id from COMICS;
                  alter view MangaGenre as select * from distinctComic cross join selectedGenre;
                  alter view ComicDifference as select * from MangaGenre where (Origin_id,Comic_id,Genre_id) not in (Select Origin_id,Comic_id,Genre_id from Comic_Genre);
                  alter view ComicResult as select Distinct Origin_id,Comic_id from Comic_genre where (Origin_id,Comic_id) not in (Select Origin_id, Comic_id from ComicDifference);
                  select * from Comics where (Origin_id,Comic_id) in (Select * from ComicResult);`;

//To Show filtered Comics
app.get(requests[4], (req,res) => {
    let sql= comicQuer;
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[5]);
        console.log("Novels fetched");
    });
});




app.listen('3000', () => {
    console.log('Server started on port 3000');
});
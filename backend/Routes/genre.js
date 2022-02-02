const router= require('express').Router()

const db= require('./database')

router.get('/', (req, res) => {
 let sql= 'Select * from Genre'
 db.query(sql, (err, result)=> {
     if(err)
     res.status(500).json({error: 'Try Again Please'})
     res.send(result)
 })

})

let str= ""
let novelQuer= `alter view distinctBook as select distinct(Book_id) from Novel_genre;
                alter view BookGenre as select * from distinctBook cross join selectedGenre;
                alter view difference as select Book_id,Genre_id from BookGenre where (Book_id,Genre_id) not in (Select Book_id,Genre_id from Novel_Genre);
                alter view Result as select Distinct(Book_id) from Novel_Genre where Book_id not in (select Book_id from Difference);
                alter view Novel_Result as select * from Novels where Book_id in (select * from Result);`
const makeQuery= (list, query) => {
    if(list.length!==0)
    {
        str= "\'"+list[0]+ "\'"
        if(list.length>1)
        for(let i=1; i< list.length; i++)
        {
          str+= ","+"\'"+list[i] +"\'"
        }
       
    }  
    console.log(str);
    query= `alter view selectedGenre as select Genre_id from GENRE where name in (${str});`+ query;
    return query;
}



// //To show Filtered Novels
router.get('/filterNovel/*', (req,res) => {
    console.log(req.params[0])
    let list= req.params[0].split('/')
    novelQuery= makeQuery(list,  novelQuer)
    console.log(list)

    let sql= novelQuery + `select * from Novel_Result`;
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log("Novels Shown...");
    });
});



//Comic Filter
const comicQuer= `alter view distinctComic as select distinct Origin_id, Comic_id from COMICS;
                  alter view MangaGenre as select * from distinctComic cross join selectedGenre;
                  alter view ComicDifference as select * from MangaGenre where (Origin_id,Comic_id,Genre_id) not in (Select Origin_id,Comic_id,Genre_id from Comic_Genre);
                  alter view ComicResult as select Distinct Origin_id,Comic_id from Comic_genre where (Origin_id,Comic_id) not in (Select Origin_id, Comic_id from ComicDifference);
                  alter view Comic_Result as select * from Comics where (Origin_id,Comic_id) in (Select * from ComicResult);`;

//To Show filtered Comics
router.get('/filterComic/*', (req,res) => {
    let list= req.params[0].split('/')
    comicQuery= makeQuery(list,  comicQuer)
    let sql= comicQuery+"Select * from Comic_Result";
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log("Comics fetched");
    });
});

//To show filtered Adaptations
router.get('/filterAdaptation/*', (req,res) => {
    let list= req.params[0].split('/')
    comicQuery= makeQuery(list,  comicQuer)
    let sql= comicQuery+"Select * from Adaptations A, Comic_Result CR where A.Comic_id= CR.Comic_id and A.Origin_id= CR.Origin_id";
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log("Comics fetched");
    });
});

//To show filtered Anime
router.get('/filterAnime/*', (req,res) => {
    let list= req.params[0].split('/')
    comicQuery= makeQuery(list,  comicQuer)
    let sql= comicQuery+"Select * from  Adaptations A, Anime ANI, Comic_Result CR where ANI.Type= A.Type and ANI.Adapt_id= A.Adapt_id and A.Comic_id= CR.Comic_id and A.Origin_id= CR.Origin_id";
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.send(result[6]);
        console.log("Comics fetched");
    });
});

module.exports= router
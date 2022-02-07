const router= require('express').Router()
const mutate= require('../functions/MutateJson')
const db= require('./database')
const mutateAdapt= require('../functions/AdaptationMerge')

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

//To show filtered Live Adaptations
router.get('/filterLive/*', (req,res) => {
    let list= req.params[0].split('/')
    comicQuery= makeQuery(list, comicQuer)
    let sql= comicQuery+"Select * from Adaptations A, Live LIV, Comic_Result CR where LIV.Type= A.Type and LIV.Adapt_id= A.Adapt_id and A.Comic_id= CR.Comic_id and A.Origin_id= CR.Origin_id";
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(result[6]);
    });
})

router.get('/comics/filterByStatus/:status', (req, res) => {
    let sql= `select *, C.Name as Name, G.Name as Genres from Comics C inner join Comic_Genre CG on C.Comic_id= CG.Comic_id and C.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id where status= "${req.params.status}"`
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(mutate(result));
    });
})

router.get('/novels/filterByStatus/:status', (req, res) => {
    let sql=  `select *, N.Name as Name, G.Name as Genres from Novels N inner join Novel_Genre NG on N.Book_id= NG.Book_id
    inner join Genre G on NG.Genre_id= G.Genre_id where status= "${req.params.status}"`
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(mutate(result));
    });
})

router.get('/anime/filterByRating/:rating', (req, res)=> {
    let sql=  `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join Anime ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id where rating>${req.params.rating};`
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(mutateAdapt(result));
    });
})

router.get('/:type/filterByRatingBetween/:lrate/:urate', (req, res)=> {
    let sql=  `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join ${req.params.type} ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id where rating between ${req.params.lrate} and ${req.params.urate};`
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(mutateAdapt(result));
    });
})

router.get('/live/filterByRating/:rating', (req, res)=> {
    let sql=  `select *, A.Name as Name, G.Name as Genres, C.Synopsis from Adaptations A inner join Comic_Genre CG on A.Comic_id= CG.Comic_id and A.Origin_id= CG.Origin_id
    inner join Genre G on CG.Genre_id= G.Genre_id inner join (Select Origin_id, Comic_id, Synopsis from comics) as C on C.Comic_id= A.Comic_id and C.Origin_id= A.Origin_id
    inner join live ANI on A.Type= ANI.Type and A.Adapt_id= ANI.Adapt_id where rating>${req.params.rating};`
    db.query(sql, (err,result) => {
        if(err) throw err;
        res.json(mutateAdapt(result));
    });
})

module.exports= router
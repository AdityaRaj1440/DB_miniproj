const merge= (result) => {

    let json =  result[0];
    const genre= []
    for(let i=0; i<result.length; i++)
    {
        genre.push(result[i].Genres)
    }
    delete json.Genre_id
    json.Genres= genre.join(',')
    return json
}

module.exports= merge
const merge= require("./GenreMerge")
console.log('Hello World')
const mutate= (result) => {
   
  let json= [result[0]]
  //console.log(result)
  //console.log("Name is ",result[0].Name);
  let finResult= []
  for(let i=1; i<result.length; i++)
  {
     //console.log(result[1].name)
      if(json[0].Name=== result[i].Name)
      {
          //console.log('True');
          json.push(result[i])
          if(i===result.length-1)
            finResult.push(merge(json))
      }
      else
      {
          finResult.push(merge(json))
          //console.log(finResult);
          json= [result[i]]
      }
  }
  //console.log(finResult)
  return finResult
}

module.exports= mutate
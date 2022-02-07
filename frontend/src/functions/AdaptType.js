

const AdaptType = ({Type}) => {
    var anime = document.getElementsByClassName('ANI')
        var liv = document.getElementsByClassName('LIV')
        if(Type === 'LIV'){
            for (let i = 0; i < anime.length; i++) { 
                anime[i].disabled = true;
                if(i<2)
                 liv[i].disabled= false;
            }

        }
        else{
            for (let j = 0; j < anime.length; j++) { 
                anime[j].disabled = false;
                if(j<2)
                liv[j].disabled= true;
            }
        }
}
export default AdaptType


const ClearFields = () => {
    const collection = document.querySelectorAll("input , textarea")
    for (let i = 0; i < collection.length; i++) {
        if (collection[i].type === "checkbox") {
            collection[i].checked = false;
        }
        else{
            collection[i].value = ''
        }
    }
  }

export default ClearFields 
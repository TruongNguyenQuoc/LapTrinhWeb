const searchBtn = document.querySelector('search-btn');
const searchText = document.querySelector('search-text');


searchBtn.addEventListener('click',() =>{
    if(!searchText.classList.contains('search-text')){
        searchText.classList.add('search-btn');
        searchBtn.innerHTML = "<ion-icon name=\"close-outline\"></ion-icon>";
    }
    else{
        searchText.classList.remove('search');
        searchBtn.innerHTML = "";
    }

})
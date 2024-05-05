//Aparecer/Esconder barra de pesquisa do header
const searchBtn = document.getElementById('search-button');
const searchBar = document.getElementById('search-bar');

searchBtn.addEventListener('click', function() {
    if(searchBar.classList.contains('active')){
        searchBar.classList.remove('active');
        searchBar.classList.add('toogle');
    }else{
        searchBar.classList.add('active');
    }
});
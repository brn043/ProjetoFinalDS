document.addEventListener('DOMContentLoaded', function(){
    bars_btn = document.getElementById("menu");
    menu = document.getElementById("side-menu");
    main = document.getElementById("container-products");

    bars_btn.addEventListener('click', function(){
        if(menu.classList.contains("active")){
            menu.classList.remove("active");
            menu.classList.add("toogle");
            main.classList.remove("toggle");
        }else{
            menu.classList.add("active");
            main.classList.add("toggle");
        }
    });
});
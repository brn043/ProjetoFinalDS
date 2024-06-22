document.addEventListener('DOMContentLoaded', function(){
    bars_btn = document.getElementById("menu");
    cta_button = document.getElementById("cta_button")
    menu = document.getElementById("side-menu");

    bars_btn.addEventListener('click', function(){
        if(menu.classList.contains("active")){
            menu.classList.remove("active");
            menu.classList.add("toogle");
            cta_button.classList.remove("toggle");
        }else{
            menu.classList.add("active");
            cta_button.classList.add("toggle");
        }
    });
});
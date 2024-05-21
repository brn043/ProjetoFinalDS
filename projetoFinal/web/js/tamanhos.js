document.addEventListener('DOMContentLoaded', function () {
    const sizes = document.getElementsByClassName("tamanho");

    for (let i = 0; i < sizes.length; i++) {
        sizes[i].addEventListener('click', function () {
            for (let i = 0; i < sizes.length; i++) {
                if (sizes[i].classList.contains("selected")) {
                    sizes[i].classList.remove("selected");
                }                
            }
            sizes[i].classList.add("selected");
            const idEstoque = sizes[i].getAttribute("data-id");
            
            const action = document.getElementById("action");
            const href = action.getAttribute("href");
            const parametros = href.substring(0, href.indexOf("tamanho="));
            action.setAttribute("href", parametros + "tamanho="+idEstoque);
            
        });
        sizes[0].click();
    }
});


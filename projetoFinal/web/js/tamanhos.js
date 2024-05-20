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
        });
        
    }
});


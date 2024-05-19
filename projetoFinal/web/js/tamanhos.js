document.addEventListener('DOMContentLoaded', function () {
    const size = document.getElementsByClassName("tamanho");

    size.addEventListener('click', function () {
        if (size.classList.contains("selected")) {
            size.classList.remove("selected");
        } else {
            size.classList.add("selected");
        }
    });
});


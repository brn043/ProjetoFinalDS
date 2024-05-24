document.addEventListener('DOMContentLoaded', function () {
    const payments = document.getElementsByClassName("btn");
    const forms = document.getElementsByClassName("frm")

    for (let i = 0; i < forms.length; i++) {
        payments[i].addEventListener('click', function () {
            for (let i = 0; i < forms.length; i++) {
                if (forms[i].classList.contains("selected")) {
                    forms[i].classList.remove("selected");
                } else {
                    forms[i].classList.add("selected");
                }
            }
        });
    }
});
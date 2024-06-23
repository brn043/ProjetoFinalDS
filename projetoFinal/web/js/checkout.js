document.addEventListener('DOMContentLoaded', function () {
    const payments = document.getElementsByClassName("paymentsBtn");
    const forms = document.getElementsByClassName("forms")

    for (let i = 0; i < forms.length; i++) {
        payments[i].addEventListener('click', function () {
            if (forms[i].classList.contains("selected")) {
                forms[i].classList.remove("selected");
            } else {
                for (let j = 0; j < i; j++) {
                    if (forms[j].classList.contains('selected')) {
                        forms[j].classList.remove('selected');
                    }
                }
                forms[i].classList.add('selected');
            }

        });
    }

    const formCheckout = document.getElementById('checkoutFrm');

    formCheckout.addEventListener('submit', function (event) {
        event.preventDefault();

        let b
        const inputs = document.getElementsByClassName('input');

        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].value.trim() === "") {
                b = true;
            }
        }
        if (b === true) {
            alert("Preencha todos os campos corretamente!");
        } else {
            formCheckout.submit();
        }
    });

});
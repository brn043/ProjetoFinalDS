document.addEventListener('DOMContentLoaded', function () {
    const payments = document.getElementsByClassName("paymentsBtn");
    const forms = document.getElementsByClassName("forms")

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

    const formCheckout = document.getElementById('checkoutFrm');

    formCheckout.addEventListener('submit', function(event){
        event.preventDefault();

        const inputs = document.getElementsByClassName('input');

        for(let i = 0; i < inputs.length; i++){
            if(inputs[i].value.trim() === ""){
                alert("Preencha todos os campos corretamente!");
                break;
            }else{
                formCheckout.submit();
            }
            
        }
    });

});
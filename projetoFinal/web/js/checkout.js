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

    function validacoes() {

        const frmEndereco = document.getElementById("frmEndereco")

        frmEndereco.addEventListener("submit", function (event) {
            event.preventDefault();

            const inputsEndereco = docuemnt.getElementsByClassName("inEndereco").trim()

            for (let i = 0; i < inputs.length; i++) {
                if (inputsEndereco[i].value === "") {
                    alert("Preencha os dados para entrega corretamente!")
                }
            }
            frmEndereco.submit()
        })

        const frmCartao = document.getElementById("creditCardFrm")

        frmCartao.addEventListener('submit', function (event) {
            event.preventDefault();

            const dadosCartao = document.getElementsByClassName("inCard").trim()

            for (let i = 0; i < dadosCartao.length; i++) {
                if (dadosCartao[i].value === "") {
                    alert("Preencha os dados de pagamento corretamente!")
                }
            }

            frmCartao.submit()
        })
    }

});
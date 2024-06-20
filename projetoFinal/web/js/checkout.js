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

    const frmEndereco = document.getElementById("frmEndereco")

    frmEndereco.addEventListener("submit", function (event) {
        event.preventDefault();

        const nome = document.getElementById('nome').value.trim();
        const sobrenome = document.getElementById('sobrenome').value.trim();
        const telefone = document.getElementById('telefone').value.trim();
        const cep = document.getElementById('cep').value.trim();
        const rua = document.getElementById('rua').value.trim();
        const bairro = document.getElementById('bairro').value.trim();
        const numero = document.getElementById('numero').value.trim();
        const complemento = document.getElementById('complemento').value.trim();

        if (nome === ""
            || sobrenome === ""
            || telefone === ""
            || cep === ""
            || rua === ""
            || bairro === ""
            || numero === ""
            || complemento === "") {
            alert("Preencha todos os dados de entrega!");
        } else {
            frmEndereco.submit();
        }

    })
    
    const frmEnderecoMobile = document.getElementById('frmEnderecoMobile');

    frmEnderecoMobile.addEventListener('submit', function(event){
        event.preventDefault();

        const nome = document.getElementById('nomem').value.trim();
        const sobrenome = document.getElementById('sobrenomem').value.trim();
        const telefone = document.getElementById('telefonem').value.trim();
        const cep = document.getElementById('cepm').value.trim();
        const rua = document.getElementById('ruam').value.trim();
        const bairro = document.getElementById('bairrom').value.trim();
        const numero = document.getElementById('numerom').value.trim();
        const complemento = document.getElementById('complementom').value.trim();

        if (nome === ""
            || sobrenome === ""
            || telefone === ""
            || cep === ""
            || rua === ""
            || bairro === ""
            || numero === ""
            || complemento === "") {
            alert("Preencha todos os dados de entrega!");
        } else {
            frmEndereco.submit();
        }
        
    });

    const frmCartao = document.getElementById("creditCardFrm")

    frmCartao.addEventListener('submit', function (event) {
        event.preventDefault();

        const numero = document.getElementById('in-numero').value.trim();
        const dataVencimento = document.getElementById('in-data').value.trim();
        const cvc = document.getElementById('in-cvc').value.trim();
        const nome = document.getElementById('in-nome').value.trim();

        if(numero === ""
            || dataVencimento === ""
            || cvc === ""
            || nome === ""){
            alert("Preencha todos dados do cartão!");
        }else{
            frmCartao.submit()
        }
        
    })

});
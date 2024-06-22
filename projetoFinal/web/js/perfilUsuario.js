document.addEventListener('DOMContentLoaded', function(){
    const button = document.getElementById('adicionar');

    button.addEventListener('click', function(){
        const frmAdicionarEndereco = document.getElementById("form-endereco");

        if(frmAdicionarEndereco.classList.contains('toggle')){
            frmAdicionarEndereco.classList.remove('toggle');
            frmAdicionarEndereco.classList.add('active');
        }else{
            frmAdicionarEndereco.classList.remove('active');
            frmAdicionarEndereco.classList.add('toggle');
        }
    });

    const formInfos = document.getElementById('informacoes');

    formInfos.addEventListener('submit', function(event){
        event.preventDefault();

        const nome = document.getElementById('nome').value.trim();
        const email = document.getElementById('email').value.trim();
        const senha = document.getElementById('senha').value.trim();
        const cpf = document.getElementById('cpf').value.trim();
        const telefone = document.getElementById('telefone').value.trim();
        const dataNascimento = document.getElementById('dataNascimento').value.trim();

        if(nome === ""
            || email === ""
            || senha === ""
            || cpf === ""
            || telefone === ""
            || dataNascimento === ""){
            alert("Preencha corretamente todos os dados pessoais!");
        }else{
            formInfos.submit();
        }
    });

    const formEndereco = document.getElementById('formAddEndereco');

    formEndereco.addEventListener('submit', function(event){
        event.preventDefault();

        const cep = document.getElementById('cep').value.trim();
        const rua = document.getElementById('rua').value.trim();
        const numero = document.getElementById('numero').value.trim();
        const complemento = document.getElementById('complemento').value.trim();

        if(cep === ""
            || rua === ""
            || numero === ""
            ||complemento === ""){
            alert("Preencha corretamente os dados de endereço!");
        }else{
            formEndereco.submit();
        }
    });

});
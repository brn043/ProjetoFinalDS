const registerForm = document.getElementById('frmSignUp');

registerForm.addEventListener('submit', function (event) {
    event.preventDefault();

    const nome = document.getElementById('inName');
    const email = document.getElementById('inEmail');
    const password = document.getElementById('inPassword');
    const cpf = document.getElementById('inCpf');
    const tel = document.getElementById('inTelefone');
    const dataNasc = document.getElementById('inDataNasc');

    if (nome.value.trim() === ""
        || email.value.trim() === ""
        || password.value.trim() === ""
        || cpf.value.trim() === ""
        || tel.value.trim() === ""
        || dataNasc.value.trim() === "") {
            alert("Preencha todos os campos corretamente !");
    }else{
        registerForm.submit();
    }
});
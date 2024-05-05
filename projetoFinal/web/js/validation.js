const loginForm = document.getElementById('frmSignIn');
const registerForm = document.getElementById('frmSignUp');

loginForm.addEventListener('submit', function (event) {
    event.preventDefault();

    const email = document.getElementById("Email");
    const password = document.getElementById("Password");

    if (email.value.trim() === "" || password.value.trim() === "") {
        alert("Email e/ou Senha Incorretos!");
    } else {
        form.submit();
    }
});

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
        form.submit();
    }
});
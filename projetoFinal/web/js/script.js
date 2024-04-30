
const signIn = document.getElementById('signin-container');
const signUp = document.getElementById('signup-container');
const registerBtn = document.getElementById('registerBtn');
const loginBtn = document.getElementById('loginBtn');

registerBtn.addEventListener('click', function(){
    signUp.classList.add("active");
    signIn.classList.add('toggle');
});

loginBtn.addEventListener('click', function(){
    signUp.classList.remove('active');
    signIn.classList.remove('toggle');
});



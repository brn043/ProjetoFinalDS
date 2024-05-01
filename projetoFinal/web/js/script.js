
const signInContainer = document.getElementById('signin-container');
const signUpContainer = document.getElementById('signup-container');
const registerLink = document.getElementById('registerBtn');
const loginLink = document.getElementById('loginBtn');

registerBtn.addEventListener('click', function () {
    signUpContainer.classList.add("active");
    signInContainer.classList.add('toggle');
});

loginBtn.addEventListener('click', function () {
    signUpContainer.classList.remove('active');
    signInContainer.classList.remove('toggle');
});


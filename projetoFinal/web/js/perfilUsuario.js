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

});
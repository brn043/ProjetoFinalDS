<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Finalizar Compra - LESS</title>
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="styles/checkoutStyle.css">
    </head>

    <body>
        <header>
            <nav class="navbar">
                <div class="links-pages">
                    <a href="./ListarProdutosController">SHOP</a>
                    <a href="./sobreController">SOBRE</a>
                </div>
                <div class="logo">
                    <a href="IndexController"><img src="assets/less-logo.png" alt=""></a>
                </div>
                <div class="links-user">
                    <form id="search-bar" class="toogle" action="./buscar" method="get">
                        <input type="text" name="busca" placeholder="Digite o que você deseja">
                    </form>
                    <a id="search-button"><i class="fa-solid fa-magnifying-glass"></i></a>
                    <a href="./LoginController"><i class="fa-solid fa-user"></i></a>
                    <a href="./CarrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
            <nav class="mobile-navbar">
                <div class="menu-container">
                    <a href="" id="menu"><i class="fa-solid fa-bars"></i></a>
                </div>
                <div class="logo">
                    <a href="IndexController"><img src="assets/less-logo-mobile.png" alt=""></a>
                </div>
                <div class="links-user">
                    <a href="./LoginController"><i class="fa-solid fa-user"></i></a>
                    <a href="./CarrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
        </header>
        <main>
            <div class="container">
                <div id="title">
                    <h1>Finalizar Compra</h1>
                </div>
                <div id="forms">
                    <form action="" id="frmEndereco">
                        <div id="form-title">
                            <p>Informações para Entrega:</p>
                        </div>
                        <div id="blocks">
                            <div id="l-block">
                                <label for="nome">Nome:</label>
                                <input class="inEndereco" id="nome" type="text" name="nome" placeholder="Digite aqui">
                                <label for="telefone">Telefone:</label>
                                <input class="inEndereco" type="text" name="telefone" id="telefone"
                                       placeholder="Digite aqui">
                                <label for="rua">Rua:</label>
                                <input class="inEndereco" id="rua" type="text" name="rua" placeholder="Digite aqui">
                                <label for="numero">Número:</label>
                                <input class="inEndereco" id="numero" type="number" name="numero" min="1" placeholder="Digite aqui">
                            </div>
                            <div id="r-block">
                                <label for="sobrenome">Sobrenome:</label>
                                <input class="inEndereco" id="sobrenome" type="text" name="sobrenome" placeholder="Digite aqui">
                                <label for="cep">Cep:</label>
                                <input class="inEndereco" id="cep" type="text" name="cep" id="cep" placeholder="Digite aqui">
                                <label for="bairro">Bairro:</label>
                                <input class="inEndereco" id="bairro" type="text" name="bairro" placeholder="Digite aqui">
                                <label for="complemento">Complemento:</label>
                                <input class="inEndereco" id="complemento" type="text" name="complemento" placeholder="Digite aqui">
                            </div>
                        </div>
                    </form>

                    <form action="" id="frmEnderecoMobile">
                        <div id="form-title">
                            <p>Informações para Entrega:</p>
                        </div>
                        <div id="inputs">
                            <label for="nome">Nome:</label>
                            <input class="inEndereco" type="text" id="nomem" name="nome" placeholder="Digite aqui">
                            <label for="sobrenome">Sobrenome:</label>
                            <input class="inEndereco" type="text" id="sobrenomem" name="sobrenome" placeholder="Digite aqui">
                            <label for="telefone">Telefone:</label>
                            <input class="inEndereco" id="telefonem" type="text" name="telefone" id="telefone"
                                   placeholder="Digite aqui">
                            <label for="cep">Cep:</label>
                            <input class="inEndereco" id="cepm" type="text" name="cep" id="cep" placeholder="Digite aqui">
                            <label for="rua">Rua:</label>
                            <input class="inEndereco" id="ruam" type="text" name="rua" placeholder="Digite aqui">
                            <label for="bairro">Bairro:</label>
                            <input class="inEndereco" id="bairrom" type="text" name="bairro" placeholder="Digite aqui">
                            <label for="numero">Número:</label>
                            <input class="inEndereco" id="numerom" type="number" name="numero" min="1" placeholder="Digite aqui">
                            <label for="complemento">Complemento:</label>
                            <input class="inEndereco" id="complemento" type="text" name="complemento" placeholder="Digite aqui">
                        </div>
                    </form>
                    <div id="payment">
                        <div id="payment-title">
                            <p>Forma de Pagamento:</p>
                        </div>
                        <div id="payments-container">
                            <div id="credito">
                                <div><img src="" alt="bandeiras"></div>
                                <div>
                                    <p>Cartão de Crédito</p>
                                </div>
                                <div><button class="btn">></button></div>
                            </div>
                            <div class="frm" id="form-container-credit">
                                <form action="" id="creditCardFrm">
                                    <label id="label-numero" for="card-number">Número do Cartão:</label>
                                    <input class="inCard" id="in-numero" type="text" placeholder="Digite Aqui">
                                    <label id="label-data" for="data-venc">Data de Vencimento:</label>
                                    <input class="inCard" id="in-data" type="text" placeholder="Digite Aqui">
                                    <label id="label-cvc" for="cvc">CVC:</label>
                                    <input class="inCard" id="in-cvc" type="text" placeholder="Digite Aqui">
                                    <label id="label-nome" for="nome-cartao">Nome no Cartão:</label>
                                    <input class="inCard" id="in-nome" type="text" placeholder="Digite Aqui">
                                </form>
                            </div>
                            <div id="boleto">
                                <div><img src="" alt="boleto"></div>
                                <div>
                                    <p>Boleto</p>
                                </div>
                                <div><button class="btn">></button></div>
                            </div>
                            <div id="pix">
                                <div><img src="" alt="boleto"></div>
                                <div>
                                    <p>Pix</p>
                                </div>
                                <div><button class="btn">></button></div>
                            </div>
                        </div>
                        <a id="btnConfirmar" href="./validarPagamento"><button type="submit">FINALIZAR
                                COMPRA</button></a>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <div class="footer-container">
                <div class="infos">
                    <p>
                        LESS S.A © 2024.
                        <br>
                        todos os direitos reservados
                        <br>
                        Londrina, PR.
                    </p>
                </div>
                <div class="contact">
                </div>
                <div class="credits">
                    <p>
                        Desenvolvido por:
                        <br>
                        Bruno de Souza Araujo
                        <br>
                        <a href=""><i class="fa-brands fa-instagram"></i> @brn.043</a>
                    </p>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
                integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
            $('#telefone').mask('(00) 00000-0000');
            $('#cep').mask('00000-000');
            $('#in-numero').mask('0000 0000 0000 0000');
            $('#in-cvc').mask('000');
            $('#in-data').mask('00/00');
            $(document).ready(function () {
                $('#in-nome').on('input', function () {
                    var inputNome = $(this).val();
                    // Remove caracteres não permitidos e transforma em maiúsculas
                    inputNome = inputNome.replace(/[^a-zA-Z\s]/g, '').toUpperCase();
                    $(this).val(inputNome);
                });
            });
        </script>
    </body>
    <script src="./js/search-bar.js" type="text/javascript"></script>
    <script src="./js/checkout.js" type="text/javascript"></script>

</html>
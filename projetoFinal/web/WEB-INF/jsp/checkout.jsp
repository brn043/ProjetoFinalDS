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
                    <a href="IndexController"><img src="assets/less-logo-mobile.png" alt=""></a>
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
                <form id="checkoutFrm" action="./validarPagamento">
                    <div id="forms-container">
                    <div id="frmEndereco">
                        <div class="form-title">Informações de Entrega:</div>
                        <span>Nome Completo:</span>
                        <input type="text" class="input" id="nome" placeholder="Digite Aqui" required>
                        <span>Cep:</span>
                        <input type="text" class="input" minlength="8" id="cep" placeholder="Digite Aqui" required>
                        <span>Rua:</span>
                        <input type="text" class="input" id="rua" placeholder="Digite Aqui" required>
                        <span>Número:</span>
                        <input type="text" class="input" id="numero" placeholder="Digite Aqui" required>
                        <span>Complemento:</span>
                        <input type="text" class="input" id="Complemento" placeholder="Digite Aqui" required>
                    </div>
                    <div id="pagamentos">
                        <div class="form-title">Forma de Pagamento:</div>
                        <div id="cartao-credito">
                            <div><img src="./assets/bandeira-dos-cartoes-de-credito.png" alt="bandeiras"></div>
                            <div><span>Cartão de Crédito</span></div>
                            <div><a class="paymentsBtn">></a></div>
                        </div>
                        <div id="form-cartao-credito" class="forms">
                            <div>
                                <span>Número do cartão:</span>
                                <input minlength="16" class="input" id="numero-cartao" type="text">
                            </div>
                            <div id="mid">
                                <div>
                                    <span>Data de Vencimento:</span>
                                    <input class="input" id="dataVencimento" type="text">
                                </div>
                                <div>
                                    <span>CVC:</span>
                                    <input minlength="3" class="input" id="cvc" type="text">
                                </div>
                            </div>
                            <div>
                                <span>Nome do titular:</span>
                                <input class="input" id="nome-titular" type="text">
                            </div>
                        </div>
                        <div id="boleto">
                            <div><img src="./assets/boleto.png" alt="boleto"></div>
                            <div><span>Boleto</span></div>
                            <div><a>></a></div>
                        </div>
                        <div id="pix">
                            <div><i class="fa-brands fa-pix"></i></div>
                            <div><span>Pix</span></div>
                            <div><a class="paymentsBtn">></a></div>
                        </div>
                        <div id="pix-code" class="forms">
                            <span>Scanear QR Code: </span>
                            <img src="./assets/QR_Code.png" alt="">
                        </div>
                    </div>
                </div>
                <div id="btnFinalizar">
                    <button type="submit">FINALIZAR COMPRA</button>
                </div>
                </form>
                <div id="side-menu">
                    <div id="container">
                        <div id="search-box">
                            <form class="search-form" action="./buscar" method="get">
                                <input type="text" class="search-bar" name="busca" placeholder="Digite o que você deseja">
                                <button id="search-button" ><i class="fa-solid fa-magnifying-glass"></i></button>
                            </form>
                        </div>
                        <div id="links">
                            <a href="./ListarProdutosController">SHOP</a>
                            <a href="./SobreController">SOBRE</a>
                        </div>
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
            $('#cep').mask('00000-000');
            $('#numero-cartao').mask('0000 0000 0000 0000');
            $('#cvc').mask('000');
            $('#dataVencimento').mask('00/00');
            $('#numero').mask('00000');
            $(document).ready(function () {
                $('#nome-titular').on('input', function () {
                    let inputNome = $(this).val();
                    // Remove caracteres não permitidos e transforma em maiúsculas
                    inputNome = inputNome.replace(/[^a-zA-Z\s]/g, '').toUpperCase();
                    $(this).val(inputNome);
                });
            });
            $(document).ready(function () {
                $('#nome').on('input', function () {
                    let inputNome = $(this).val();
                    // Remove caracteres não permitidos e transforma em maiúsculas
                    inputNome = inputNome.replace(/[^a-zA-Z\s]/g, '');
                    $(this).val(inputNome);
                });
            });
        </script>
    </body>
    <script src="./js/search-bar.js" type="text/javascript"></script>
    <script src="./js/checkout.js" type="text/javascript"></script>

    </html>
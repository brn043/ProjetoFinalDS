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
                                <input type="text" name="nome">
                                <label for="telefone">Telefone:</label>
                                <input type="text" name="telefone" id="telefone">
                                <label for="rua">Rua:</label>
                                <input type="text" name="rua">
                                <label for="numero">Número:</label>
                                <input type="number" name="numero" min="1">
                            </div>
                            <div id="r-block">
                                <label for="sobrenome">Sobrenome:</label>
                                <input type="text" name="sobrenome">
                                <label for="cep">Cep:</label>
                                <input type="text" name="cep" id="cep">
                                <label for="bairro">Bairro:</label>
                                <input type="text" name="bairro">
                                <label for="complemento">Complemento:</label>
                                <input type="text" name="complemento">
                            </div>
                        </div>
                    </form>
                    <div id="payment">
                        <div id="payment-title">
                            <p>Forma de Pagamento:</p>
                        </div>
                        <di id="payments-container">
                            <div id="credito">
                                <div><img src="" alt="bandeiras"></div>
                                <div><p>Cartão de Crédito</p></div>
                                <div><button class="btn">></button></div>
                            </div>
                            <div class="frm" id="form-container-credit">
                                <form action="" id="creditCardFrm">
                                    <label id="label-numero" for="card-number">Número do Cartão:</label>
                                    <input id="in-numero" type="number" placeholder="Digite Aqui">
                                    <label id="label-data" for="data-venc">Data de Vencimento:</label>
                                    <input id="in-data" type="text" placeholder="Digite Aqui">
                                    <label id="label-cvc" for="cvc">CVC:</label>
                                    <input id="in-cvc" type="number" placeholder="Digite Aqui">
                                    <label id="label-nome" for="nome-cartao">Nome no Cartão:</label>
                                    <input id="in-nome" type="text" placeholder="Digite Aqui">
                                </form>
                            </div>
                            <div id="boleto">
                                <div><img src="" alt="boleto"></div>
                                <div><p>Boleto</p></div>
                                <div><button class="btn">></button></div>
                            </div>
                            <div id="pix">
                                <div><img src="" alt="boleto"></div>
                                <div><p>Pix</p></div>
                                <div><button class="btn">></button></div>
                            </div>
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
            $('#telefone').mask('(00) 00000-0000');
            $('#cep').mask('00000-000');
        </script>
    </body>
    <script src="./js/search-bar.js" type="text/javascript"></script>
    <script src="./js/checkout.js" type="text/javascript"></script>
    </html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
        <link href="styles/confirmacaoCompra.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <title>Compra Concluída - LESS</title>
    </head>

    <body>
    <header>
        <nav class="navbar">
            <div class="links-pages">
                <a href="./ListarProdutosController">SHOP</a>
                <a href="./SobreController">SOBRE</a>
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
                <a id="menu"><i class="fa-solid fa-bars"></i></a>
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
        <div class="main-container">
            <div id="icon-container">
                <i class="fa-solid fa-circle-check"></i>
            </div>
            <div id="text-container">
                <h3>Compra Finalizada Com Sucesso!</h3>
                <p>Obrigado por comprar conosco.</p>
            </div>
            <div id="buttons-container">
                <a href="./PedidosController"><button>ACOMPANHAR MEUS PEDIDOS</button></a>
                <a href="./ListarProdutosController"><button>CONTINUAR COMPRANDO</button></a>
            </div>

            <div id="side-menu">
                <div id="container">
                    <div id="search-box">
                        <form action="./buscar" method="get">
                            <input type="text" id="search-bar" name="busca" placeholder="Digite o que você deseja">
                            <button><i class="fa-solid fa-magnifying-glass"></i></button>
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
</body>
<script src="js/search-bar.js" type="text/javascript"></script>
<script src="js/side-menu.js" type="text/javascript"></script>
</html>

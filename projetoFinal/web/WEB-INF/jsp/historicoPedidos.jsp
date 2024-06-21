<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Meus pedidos - LESS</title>
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="styles/style.css">
            <link rel="stylesheet" href="styles/historicoPedidos.css">
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
                <div id="side-menu">
                    <div id="container">
                        <div id="search-box">
                            <form action="./buscar" method="get">
                                <input type="text" id="search-bar" name="busca" placeholder="Digite o que você deseja">
                                <button id="search-button"><i class="fa-solid fa-magnifying-glass"></i></button>
                            </form>
                        </div>
                        <div id="links">
                            <a href="./ListarProdutosController">SHOP</a>
                            <a href="./SobreController">SOBRE</a>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div id="title">
                        <h1>Meus Pedidos</h1>
                    </div>
                    <div class="table">
                        <div id="tb-header">
                            <span>Número do Pedido</span>
                            <span>Nome do Produto</span>
                            <span>Preço</span>
                            <span>Quantidade</span>
                            <span>Total</span>
                            <span>Data do Pedido</span>
                            <span>Situação</span>
                        </div>
                        <c:forEach items="${pedidos}" var="pedido">
                        <div id="row">
                            <span>${pedido.id_pedido}</span>
                            <span>${pedido.produto}</span>
                            <span>${pedido.preco}</span>
                            <span>${pedido.quantidade}</span>
                            <span>${pedido.total}</span>
                            <span>${pedido.dataPedido}</span>
                            <span>${pedido.situacao}</span>
                        </div>
                        </c:forEach>
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

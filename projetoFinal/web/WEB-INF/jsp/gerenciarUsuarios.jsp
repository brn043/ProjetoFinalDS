<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Produtos - LESS</title>
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="styles/style.css">
            <link rel="stylesheet" href="styles/gerenciarProdutos.css">
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
                                <button><i class="fa-solid fa-magnifying-glass"></i></button>
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
                        <h1>Gerenciar Produtos</h1>
                    </div>
                    <div class="table">
                        <div id="tb-header">
                            <span>ID do Produto</span>
                            <span>Nome do Produto</span>
                            <span>Categoria</span>
                            <span>Quantidade</span>
                            <span>Preço</span>
                        </div>
                        <c:forEach items="${produtos}" var="produto">
                        <div id="row">
                            <span>${produto.id_produto}</span>
                            <span>${produto.nome}</span>
                            <span>${produto.categoria}</span>
                            <span>${produto.quantidade}</span>
                            <span>${produto.preco}</span>
                            <a href="./remover-produto?id=${produto.id_produto}"><i class="fa-solid fa-trash"></i></a>
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

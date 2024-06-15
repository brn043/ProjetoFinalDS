<%@page language="java" contentType="text/html"  pageEncoding = "ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Produtos - LESS</title>
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="styles/style.css">
            <link rel="stylesheet" href="styles/produtosStyle.css">
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
                <div class="products">
                    <div class="title">
                        <h1>Nossos Produtos</h1>
                    </div>
                    <div class="products-container">
                        <div class="filter-column">
                            <form action="./buscar-categoria" method="get">
                                <h4>CATEGORIAS:</h4>
                                <select name="categoria">
                                    <option value="0">SELECIONE...</option>
                                    <option value="1">CAMISETAS</option>
                                    <option value="2">CALÇAS</option>
                                    <option value="3">BERMUDAS</option>
                                    <option value="4">MOLETOM</option>
                                    <option value="5">ACESSÓRIOS</option>
                                </select>
                                <button>FILTRAR</button>
                            </form>
                        </div>
                        <div class="cards-container">
                            <c:forEach items="${produtos}" var="produto">
                                <div class="card">
                                    <div id="product-img">
                                        <img src="${produto.img}" alt="">
                                    </div>
                                    <div id="product-title">
                                        <span>${produto.nome}</span>
                                    </div>
                                    <div id="product-add">
                                        <a href="./ver-produto?id=${produto.id_produto}&name=${produto.nome}"><i class=" fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </c:forEach>
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
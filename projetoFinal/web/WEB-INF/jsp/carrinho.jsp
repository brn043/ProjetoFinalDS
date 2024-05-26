<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrinho - LESS</title>
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="styles/carrinhoStyle.css">
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
                    <p>Carrinho</p>
                </div>
                <div id="table">
                    <c:forEach items="${produtos}" var="produto">
                        <div id="produto">
                            <div id="produto-img">
                                <img src="${produto.img}" alt="imagem-produto">
                            </div>
                            <div id="produto-nome">
                                <p>${produto.produto}</p>
                            </div>
                            <div id="produto-quantidade">
                                <p>x${produto.quantidade}</p>
                            </div>
                            <div id="produto-preco">
                                <p>${produto.preco}</p>
                            </div>
                            <div id="produto-tamanho">
                                <p>${produto.tamanho}</p>
                            </div>
                            <p id="total-produto">${produto.total}</p>
                            <div id="buttons">
                                <a
                                    href="./incrementar?id=${produto.id_compra}&quantidade=${produto.quantidade}&preco=${produto.preco}&total=${produto.total}">+</a>
                                <a
                                    href="./diminuir?id=${produto.id_compra}&quantidade=${produto.quantidade}&preco=${produto.preco}&total=${produto.total}">-</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="total-container">
                <div>
                    <h4>Total: R$ <%Float total = (Float) request.getAttribute("total"); if(total != null){out.print(total);}%></h4>
                    <a href="./CheckoutController"><button>COMPRAR</button></a>
                </div>
            </div>
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

</html>
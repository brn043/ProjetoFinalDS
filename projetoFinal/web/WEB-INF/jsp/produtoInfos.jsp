<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Produtos - LESS</title>
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/paginaProdutoStyle.css">
        <link rel="stylesheet" href="styles/style.css">
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
                <c:forEach items="${produtos}" var="produto">
                    <div id="product-image">
                        <img src="${produto.img}" alt="product-image">
                    </div>
                    <div id="product-infos">
                        <p id="product-name">${produto.nome}</p>
                        <p id="product-price">R$ ${produto.preco}</p>
                        <p id="product-desc">${produto.descricao}</p>
                        <div id="tabela-tamanhos">
                            <p id="message"><%
                                String message = (String) request.getAttribute("message");
                                if(message != null){
                                    out.print(message);
                                }else{
                                    out.print("Tamanhos: ");
                                }
                                %></p>
                            <div id="opcoes-tamanho">
                                <c:forEach items="${tamanhos}" var="tamanho">
                                    <div class="tamanho" data-id="${tamanho.tamanho}"><span>${tamanho.tamanho}</span></div>
                                        </c:forEach>
                            </div>
                        </div>
                        <a id="action" href="./adicionar?img=${produto.img}&produto=${produto.nome}&preco=${produto.preco}&quantidade=1&tamanho=G"><button>ADICIONAR AO CARRINHO</button></a>
                    </div>
                </c:forEach>
            </div>
        </main>
        <footer>
            <div class="footer-container">
                <div class="infos">
                    <p>
                        LESS S.A � 2024.
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
    <script src="./js/search-bar.js" type="text/javascript"></script>
    <script src="./js/tamanhos.js" type="text/javascript"></script>
</html>

<%-- Document : produtoInfos Created on : 07/05/2024, 16:47:40 Author : Senai --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html lang="pt-br">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Produtos - LESS</title>
                <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="styles/paginaProdutoStyle.css">
                <link rel="stylesheet" href="styles/style.css">
                <title>Produto - LESS</title>
            </head>

            <body>
                <header>
                    <nav>
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
                            <a href="./carrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </nav>
                </header>
                <main>
                    <div class="container">
                            <div id="product-image">
                                <img src="./../../assets/camiseta-overs.jpg" alt="product-image">
                            </div>
                            <div id="product-title">
                                <h3>${produto.nome}</h3>
                                <h3>Titulo teste</h3>
                            </div>
                            <div id="product-price">
                                <h5>${produto.preco}</h5>
                                <h5>299.90</h5>
                            </div>
                            <div id="product-add">
                                <button>COMPRAR</button>
                            </div>
                            <div id="product-description">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae voluptatibus
                                    accusamus est quo nisi? Veritatis deserunt ut ipsam dolore blanditiis, minus
                                    asperiores debitis culpa vero? Architecto earum optio ullam eius?
                                    Recusandae quas nesciunt maiores dicta odio reiciendis aspernatur ipsum, magnam
                                    magni exercitationem neque nostrum, at tenetur doloribus aliquid reprehenderit,
                                    eaque ducimus debitis similique quidem? Similique, nihil asperiores. Ex, suscipit
                                    doloremque!</p>
                                <p>${produto.descricao}</p>
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

            </html>
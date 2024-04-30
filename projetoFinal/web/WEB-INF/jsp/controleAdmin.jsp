<%-- Document : controleAdmin Created on : 30/04/2024, 14:12:12 Author : Senai --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <link href="styles/style.css" rel="stylesheet" type="text/css" />
            <link href="styles/adminPageStyle.css" rel="stylesheet" type="text/css" />
            <title>LESS OFICIAL</title>
        </head>

        <body>
            <header>
                <nav>
                    <div class="links-pages">
                        <a href="./produtosController">SHOP</a>
                        <a href="./sobreController">SOBRE</a>
                    </div>
                    <div class="logo">
                        <a href="#"><img src="assets/less-logo.png" alt=""></a>
                    </div>
                    <div class="links-user">
                        <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
                        <a href="./LoginController"><i class="fa-solid fa-user"></i></a>
                        <a href="./carrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                    </div>
                </nav>
            </header>
            <main>
                <div class="main-container">
                    <form action="" method="post">
                        <div class="title">
                            <h1>Cadastro de Produtos</h1>
                        </div>
                        <span>Imagem:</span>
                        <input type="file">
                        <span>Nome do produto:</span>
                        <input type="text" placeholder="Nome do produto">
                        <span>Quantidade:</span>
                        <input type="number" placeholder="Quantidade" min="0">
                        <span>Preço:</span>
                        <input type="number" placeholder="Preço do Produto">
                        <button type="submit">ADICIONAR</button>
                    </form>
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

        </html>
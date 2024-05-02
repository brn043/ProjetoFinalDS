<%-- Document : controleAdmin Created on : 30/04/2024, 14:12:12 Author : Senai --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link href="styles/style.css" rel="stylesheet" type="text/css" />
            <link href="styles/loginStyle.css" rel="stylesheet" type="text/css" />
            <link href="styles/adminPageStyle.css" rel="stylesheet" type="text/css" />
            <title>Controle de Estoque - LESS</title>
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
                        <p>Imagem:</p>
                        <input type="file">
                        <p>Nome do produto:</p>
                        <input type="text" placeholder="Nome do produto">
                        <p>Quantidade:</p>
                        <input type="number" min="0" placeholder="Quantidade">
                        <p>Preço:</p>
                        <input type="text" id="inPreco" step="0.01" min="0.00" placeholder="Preço do Produto">
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

            <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
                integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
                crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script>
                $('#inPreco').mask("#.##0,00", {reverse: true});
            </script>
        </body>

        </html>
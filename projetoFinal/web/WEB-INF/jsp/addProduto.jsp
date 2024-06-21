<%-- Document : controleAdmin Created on : 30/04/2024, 14:12:12 Author : Senai --%>

<%@page language="java" contentType="text/html"  pageEncoding = "ISO-8859-1"%>
<!DOCTYPE html>

<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
        <link href="styles/loginStyle.css" rel="stylesheet" type="text/css" />
        <link href="styles/addProdutoPageStyle.css" rel="stylesheet" type="text/css" />
        <title>Controle de Estoque - LESS</title>
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
                        <input type="text" name="busca" placeholder="Digite o que voc� deseja">
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
            <div class="main-container">
                <form action="./cadastrar-produto" method="post" enctype="multipart/form-data">
                    <div class="title">
                        <h1>Cadastro de Produtos</h1>
                    </div>
                    <p>Nome do produto:</p>
                    <input type="text" name="nome" placeholder="Nome do produto">
                    <p>Categoria:</p>
                    <select id="selectCategoria" name="categoria">
                        <option>Selecione a categoria</option>
                        <option value="1">Camisetas</option>
                        <option value="2">Cal�a</option>
                        <option value="3">Bermudas</option>
                        <option value="4">Moletom</option>
                        <option value="5">Acess�rios</option>
                    </select>
                    <p>Quantidade:</p>
                    <input type="number" name="quantidade" min="0" placeholder="Quantidade">
                    <p>Tamanho:</p>
                    <select id="selectTamanhos" name="tamanho">
                        <option>Selecione o tamanho</option>
                        <option value="1">P</option>
                        <option value="2">M</option>
                        <option value="3">G</option>
                        <option value="4">GG</option>
                    </select>
                    <p>Pre�o:</p>
                    <input type="text" id="inPreco" name="preco" step="0.01" min="0.00" placeholder="Pre�o do Produto">
                    <p>Descri��o:</p>
                    <input type="text" id="inDesc" name="desc" placeholder="Escreva uma breve descri��o do produto">
                    <p>Imagem:</p>
                    <input type="file" name="imagem" placeholder="Selecione a imgem do produto">
                    <button type="submit">ADICIONAR</button>
                </form>
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

        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
                integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
            $('#inPreco').mask("#.##0.00", {reverse: true});
        </script>
    </body>
    <script src="js/search-bar.js" type="text/javascript"></script>
</html>
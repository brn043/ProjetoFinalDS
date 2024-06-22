<%@page import="model.bean.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="styles/controleAdminStyle.css">
        <title>Controle Administrativo - LESS</title>
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
                    <a href="./logout"><i class="fa-solid fa-right-from-bracket"></i></a>
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
                    <p>Controle Administrativo</p>
                </div>
                <div id="links">
                    <a href="./adicionar-produto"><button>ADICIONAR PRODUTO</button></a>
                    <a href="./gerenciar-produtos"><button>GERENCIAR PRODUTOS</button></a>
                    <a href="./adicionar-usuario"><button>ADICIONAR USUÁRIO</button></a>
                    <a href="./gerenciar-usuarios"><button>GERENCIAR USUÁRIOS</button></a>
                </div>
                <div id="side-menu">
                    <div id="container">
                        <div id="search-box">
                            <form class="search-form" action="./buscar" method="get">
                                <input type="text" class="search-bar" name="busca" placeholder="Digite o que você deseja">
                                <button id="search-button" ><i class="fa-solid fa-magnifying-glass"></i></button>
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

</html>
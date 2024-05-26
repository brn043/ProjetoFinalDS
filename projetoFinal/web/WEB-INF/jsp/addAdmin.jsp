
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link href="styles/style.css" rel="stylesheet" type="text/css" />
            <link href="styles/loginStyle.css" rel="stylesheet" type="text/css" />
            <link rel="stylesheet" href="styles/addUsuario.css">
            <title>Adicionar Administrador</title>
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
                    </div>
                </nav>
            </header>
            <main>
                <div class="container">
                    <form id="frmSignUp" action="./adicionar-usuario" method="post">
                        <div id="title">
                            <p>Adicionar Administrador</p>
                        </div>
                        <div id="inputs-container">
                            <div id="left-block">
                                <label for="nome">Nome:</label>
                                <input name="nome" id="inName" type="text" placeholder="Digite aqui">
                                <label for="email">Email:</label>
                                <input name="email" id="inEmail" type="email" placeholder="Digite aqui">
                                <label for="senha">Senha:</label>
                                <input name="senha" id="inPassword" type="password" placeholder="Digite aqui">
                            </div>
                            <div id="right-block">
                                <label for="cpf">Cpf:</label>
                                <input id="inCpf" name="cpf" id="inCpf" type="text" placeholder="Digite aqui">
                                <label for="telefone">Telefone:</label>
                                <input id="inTelefone" name="telefone" id="inTelefone" type="text" placeholder="Digite aqui">
                                <label for="dataNascimento">Data de Nascimento:</label>
                                <input name="dataNascimento" id="inDataNasc" type="date">
                            </div>
                        </div>
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
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
                integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
            $('#inTelefone').mask('(00) 00000-0000');
            $('#inCpf').mask('000.000.000-00', {reverse: false});
        </script>
        <script src="js/search-bar.js" type="text/javascript"></script>
        <script src="js/validationAdmin.js"></script>
        </html>
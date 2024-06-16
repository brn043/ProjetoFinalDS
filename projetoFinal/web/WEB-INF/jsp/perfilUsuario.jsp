<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
        <link href="styles/perfilUsuario.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <title>Meu Perfil - LESS</title>
    </head>

    <body>
        <header>
            <nav class="navbar">
                <div class="links-pages">
                    <a href="./ListarProdutosController">SHOP</a>
                    <a href="./SobreController">SOBRE</a>
                </div>
                <div class="logo">
                    <a href="IndexController"><img src="assets/less-logo.png" alt=""></a>
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
            <div class="container">
                <div class="title">Meu Perfil</div>
                <div class="forms">
                    <form id="informacoes">
                        <div id="form-title"><span>Minhas Informações:</span></div>
                        <div id="campos">
                            <span>Nome:</span>
                            <input type="text" value="nome">
                            <span>Email:</span>
                            <input type="text" value="email">
                            <span>Senha:</span>
                            <input type="password" value="****">
                            <span>Telefone:</span>
                            <input type="text" value="telefone">
                            <span>Data de Nascimento:</span>
                            <input type="text" value="01/01/2000">
                            <button>SALVAR ALTERAÇÕES</button>
                        </div>
                    </form>
                    <div id="enderecos">
                        <span>Meus Endereços:</span>
                        <div id="row">
                            <div id="infos">
                                <p>Cep: 09098-987</p>
                                <p>Endereço: Rua Dos Periquitos, 180</p>
                                <p>Complemento: Casa verde</p>
                            </div>
                            <div id="btn">
                                <a href="#deletar"><i class="fa-solid fa-trash"></i></a>
                            </div>
                        </div>
                        <a id="adicionar" href="">+</a>
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

    </html>
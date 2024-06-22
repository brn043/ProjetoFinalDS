<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a id="menu"><i class="fa-solid fa-bars"></i></a>
                </div>
                <div class="logo">
                    <a href="IndexController"><img src="assets/less-logo-mobile.png" alt=""></a>
                </div>
                <div class="links-user">
                    <a href="./logout"><i class="fa-solid fa-right-from-bracket"></i></a>
                    <a href="./CarrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
        </header>
        <main>
            <div class="container">
                <div class="title">Meu Perfil</div>
                <div class="forms">
                    <c:forEach items="${infos}" var="infos">
                    <form id="informacoes" action="./atualizar-informacoes" method="post">
                        <div id="form-title"><span>Minhas Informações:</span></div>
                        <div id="campos">
                            <span>Nome:</span>
                            <input id="nome" name="nome" type="text" value="${infos.nome}">
                            <span>Email:</span>
                            <input id="email" name="email" type="text" value="${infos.email}">
                            <span>Senha:</span>
                            <input id="senha" name="senha" type="password" value="${infos.senha}">
                            <span>Cpf:</span>
                            <input id="cpf" name="cpf" type="text" value="${infos.cpf}">
                            <span>Telefone:</span>
                            <input id="telefone" name="telefone" type="text" value="${infos.telefone}">
                            <span>Data de Nascimento:</span>
                            <input id="dataNascimento" name="dataNascimento" type="date" value="${infos.dataNascimento}">
                            <button type="submit">SALVAR ALTERAÇÕES</button>
                        </div>
                    </form>
                    </c:forEach>
                    <div id="enderecos">
                        <div id="form-meus-enderecos-title">
                            <span>Meus Endereços</span>
                        </div>
                        <c:forEach items="${enderecos}" var="endereco">
                            <div id="row">
                                <div id="infos">
                                    <p>Cep: ${endereco.cep}</p>
                                    <p>Endereço: ${endereco.rua}, ${endereco.numero}</p>
                                    <p>Complemento: ${endereco.complemento}</p>
                                </div>
                                <div id="btn">
                                    <a href="./remover-endereco?id_endereco=${endereco.id_endereco}"><i class="fa-solid fa-trash"></i></a>
                                </div>
                            </div>
                        </c:forEach>
                        <a id="adicionar">+</a>
                        <div id="form-endereco" class="toggle">
                            <div id="form-endereco-title">
                                <span>Adicionar Novo Endereço</span>
                            </div>
                            <form id="formAddEndereco" action="./adicionar-endereco" method="post">
                                <label for="cep">Cep:</label>
                                <input id="cep" name="cep" type="text">
                                <label for="rua">Rua:</label>
                                <input id="rua" name="rua" type="text">
                                <label for="numero">Número:</label>
                                <input id="numero" name="numero" type="text">
                                <label for="complemento">Complemento:</label>
                                <input id="complemento" name="complemento" type="text">
                                <button>SALVAR ENDEREÇO</button>
                            </form>
                        </div>
                    </div>
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
    <script src="js/perfilUsuario.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
            integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $('#cep').mask('00000-000');
        $(document).ready(function () {
            $('#rua').on('input', function () {
                var value = $(this).val();
                // Remove caracteres não permitidos e transforma em maiúsculas
                value = value.replace(/[^a-zA-Z\s]/g, '').toUpperCase();
                $(this).val(value);
            });
        });
        $('#numero').mask('0000');
        $('#cpf').mask('000.000.000-00');
        $(document).ready(function () {
            $('#complemento').on('input', function () {
                var value = $(this).val();
                // Remove caracteres não permitidos e transforma em maiúsculas
                value = value.replace(/[^a-zA-Z\s]/g, '').toUpperCase();
                $(this).val(value);
            });
        });
    </script>

</html>
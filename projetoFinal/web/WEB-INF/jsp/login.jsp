<%-- Document : login Created on : 30/04/2024, 14:11:59 Author : Senai --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="styles/style.css">
            <link rel="stylesheet" href="styles/loginStyle.css">
            <title>Login - LESS</title>
        </head>

        <body>
            <header>
                <nav>
                    <div class="links-pages">
                        <a href="./produtosController">SHOP</a>
                        <a href="./sobreController">SOBRE</a>
                    </div>
                    <div class="logo">
                        <a href="./IndexController"><img src="assets/less-logo.png" alt=""></a>
                    </div>
                    <div class="links-user">
                        <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
                        <a href="#"><i class="fa-solid fa-user"></i></a>
                        <a href="./carrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                    </div>
                </nav>
            </header>
            <main>
                <div class="main-container">
                    <div class="cover-image">
                        <img src="assets/login-cover-image.jpg" alt="">
                    </div>
                    <div id="signin-container">
                        <h1>CONECTE-SE</h1>
                        <form action="./signin" method="get">
                            <p>Email: </p>
                            <input type="text" name="inEmail" id="inEmail" placeholder="Digite aqui" required><br>
                            <p>Senha: </p>
                            <input type="password" name="inPassword" id="inPassword" placeholder="Digite aqui"
                                required><br>
                            <h6>Não possui uma conta? <button type="button" id="registerBtn">Registre-se</button></h6>
                            <br>
                            <button type="submit" name="signin" id="btn_signin">ENTRAR</button>
                        </form>
                    </div>
                    <div id="signup-container">
                        <h1>REGISTRE-SE</h1>
                        <form action="./signup" method="post">
                            <p>Nome: </p>
                            <input type="text" name="inName" id="inName" placeholder="Digite aqui" required><br>
                            <p>Email: </p>
                            <input type="email" name="inEmail" id="inEmail" placeholder="Digite aqui" required><br>
                            <p>Senha: </p>
                            <input type="password" name="inPassword" id="inPassword" placeholder="Digite aqui"
                                required><br>
                            <p>Cpf: </p>
                            <input type="text" name="inCpf" id="inCpf" placeholder="Digite aqui" required><br>
                            <p>Telefone: </p>
                            <input type="text" name="inTelefone" id="inTelefone" placeholder="Digite aqui"
                                required><br>
                            <p>Data de Nascimento: </p>
                            <input type="date" name="inDataNascimento" id="inDataNasc" placeholder="Digite aqui"><br>
                            <h6>Já possui uma conta? <button type="button" id="loginBtn">Conecte-se</button></h6><br>
                            <button type="submit" name="signup" id="btn_signup">REGISTRAR-SE</button>
                        </form>
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

            <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"
                integrity="sha512-0XDfGxFliYJPFrideYOoxdgNIvrwGTLnmK20xZbCAvPfLGQMzHUsaqZK8ZoH+luXGRxTrS46+Aq400nCnAT0/w=="
                crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script>
                $('#inTelefone').mask('(00) 00000-0000');
                $('#inCpf').mask('000.000.000-00', {reverse: true});
            </script>
        </body>
        <script src="js/script.js"></script>

        </html>
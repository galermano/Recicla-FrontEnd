<%@page import="com.recicla.contAcesso.model.dao.DaoUsuario"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <!-- Implementações estilos CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
            <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
                <link href="../../css/login.css" rel="stylesheet">
                    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
                    <%@include file="../../inc/materalizeWeb.inc" %>


                    <title>Login</title>

                    <body>
                        <div id="login">
                            <div class="container">
                                <div id="login-row" class="row justify-content-center align-items-center">
                                    <div id="login-column" class="col-md-6">
                                        <div id="login-box" class="col-md-12">
                                            <h3 class="text-center text-white pt-5"><i class="fas fa-user-circle" style="font-size: 100px;"></i><br>Login</h3>

                                            <form id="login-form" class="form" action="validaLogin.jsp" method="post">

                                                <div class="form-group">  
                                                    <input type="email" name="EMAIL" id="username" class="form-control" placeholder="Email" autofocus required>
                                                </div>

                                                <div class="form-group">                             
                                                    <input type="password" name="SENHA" id="pass" class="form-control" placeholder="Senha" autofocus required>
                                                </div>



                                                <div class="form-group">

                                                    <div class="btn-login">

                                                        <button id="entrar" type="submit" name="ENVIAR" value="ENVIAR" class="btn btn-info btn-md" >Entrar</button><br>
                                                            <button id="cadastrar" type="" name="Cadastrar" value="Cadastrar" class="btn btn-info btn-md"><a href="cadastro.jsp" style="text-decoration:none">CADASTRAR</a></button><br>
                                                                <!--  <label for="remember-me" class="text-info"><span>Recuperar Acesso</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label> -->
                                                                </div>  


                                                                </div>

                                                                </form>

                                                                </div>
                                                                </div>
                                                                </div>
                                                                </div>
                                                                </div> 
                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320" style="padding-top: 10%;">
                                                                            <path fill="#808080" fill-opacity="1" d="M0,160L60,160C120,160,240,160,360,165.3C480,171,600,181,720,170.7C840,160,960,128,1080,117.3C1200,107,1320,117,1380,122.7L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
                                                                </svg>

                                                                <div class="rodape pn">
                                                                    <div class="t-center">
                                                                        © 2022 ADS FATEC 
                                                                    </div>
                                                                </div>
                                                                </body>
                                                                <script type="text/javascript">
                                                                    let input = document.getElementById('pass'),
                                                                            i = document.getElementById('eye');
                                                                    i.addEventListener('click', function () {
                                                                        if (input.type == 'password') {
                                                                            input.type = 'text';
                                                                            this.style.opacity = "1"
                                                                        } else {
                                                                            input.type = "password";
                                                                            this.style.opacity = ".3"
                                                                        }
                                                                    });
                                                                </script>
                                                                <!-- 
                                                                <body>
                                                                   <div class="container"/>
                                                                    
                                                                    <div id="login">
                                                                        <h1>Login</h1>
                                                                            <form name="login" method="post">
                                                                                <input type="email" name="EMAIL" value="" maxlength="256" placeholder="Email"> <br>
                                                                                <input type="password" name="SENHA" value="" placeholder="Senha"> <br>
                                                                        
                                                                        <button type="submit" name="ENTRAR" value="Entrar" formaction="menu.jsp">Entrar</button><br>
                                                                        <button type="submit" name="CADASTRAR" value="Cadastrar" formaction="cadastro.jsp">Cadastrar</button>
                                                                    </form>
                                                                    </div>
                                                                </body>
                                                                -->


                                                                </html>



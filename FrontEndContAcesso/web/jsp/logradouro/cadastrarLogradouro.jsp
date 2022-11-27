<%@page import="com.recicla.util.model.bean.Status"%>
<%@page import="com.recicla.util.controller.ControllerStatus"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.coleta.model.bean.Regiao"%>
<%@page import="com.recicla.coleta.controller.ControllerRegiao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<!DOCTYPE html>
<html>
<head>
<!-- Implementações estilos CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/agendarColeta.css" rel="stylesheet">
    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <%@include file="../../inc/materalizeWeb.inc" %>

	<title>Cadastrar Logradouro</title>
</head>
<body>
	    <body>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <h3 class="text-center text-white pt-5"><br>Cadastrar Logradouro</h3>

                            <form id="login-form" class="form" action="validaCadastrarLogradouro.jsp" method="post">
                                
                                <div class="form-group">  
                                    <input type="text" name="END" id="endereco" class="form-control" placeholder="Endereço" autofocus required>
                                </div>

                                <div class="form-group">                             
                                    <input type="text" name="COMPL" id="complemento" class="form-control" placeholder="Complemento" autofocus required>
                                </div>
                                
								<div class="form-group">                             
                                    <input type="text" name="CEP" id="cep" class="form-control" placeholder="CEP" autofocus required>
                                </div>
                                

                                <div class="form-group">

                                    <div class="btn-login">
                                        
                                        <button id="entrar" type="submit" name="ENVIAR" value="ENVIAR" class="btn btn-info btn-md" >Cadastrar</button><br>
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

</body>
</html>
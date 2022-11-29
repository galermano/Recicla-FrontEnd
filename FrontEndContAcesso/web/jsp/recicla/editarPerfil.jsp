<%@page import="java.util.List"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    ControllerUsuario contUsu = new ControllerUsuario();
    Usuario usuSaida = contUsu.buscar(usuario);
%>

<html>
    <!-- Implementações estilos CSS -->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/editarPerfil.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        * {
            word-break: break-word;
            padding: 0;
            margin: 0;
            list-style: none;
            border: 0;
            -moz-box-sizing: border-box;
        }

        body{
            background-color: #d3d3d3;
        }

        .bg-light {
            background: #EAEAEA!important;
            box-shadow:  0 4px 0.5em 0 #bdbebd!important;
        }
        .navbar-light .navbar-nav .nav-link {
            position: relative;
        }

        li{
            line-height: 20px;
            margin-left: 20px;
        }

        .navbar-nav .dropdown-menu {
            position: static;
            background-color: #EAEAEA;
            float: none;
            margin-top: 10px;
            border: none;
            border-radius: 0px 0px 10px 10px;
        }

        .dropdown .mclose {
            display: none !important;

        }

        .drop2{

            left: -200%;
            background-color: #EAEAEA;

            border: none;
            border-radius: 0px 0px 10px 10px;
        }
    </style>
    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Editar Perfil</title>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Reciclagem</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="menu.jsp"><i class="fas fa-house-blank"></i>Início<span ></span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-calculator"></i>  Controle de Acesso
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Cadastrar Material</a>
                            <a class="dropdown-item" href="#">Cadastrar Veículo</a>
                            <a class="dropdown-item" href="#">Telas de Coleta</a>
                        </div>
                    </li>

                </ul>
                <!-- 
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                -->
                <div class="right dropdown" data-type="hover">
                    <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="https://pbs.twimg.com/media/CMNtvCEWsAIDHE5?format=jpg&name=small" style="background-color: rgb(0, 0, 0); width: 35px; margin-right: 8px; border-radius: 50%; border: none;"></img>
                    </a>
                    <li class="nav-item dropdown">    
                        <div class="dropdown-menu drop2" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item" href="#">Editar Perfil</a>
                            <a class="dropdown-item" href="#">Configurações</a>                    
                            <a class="dropdown-item" href="login.jsp" style="color: red;">Sair</a> 
                        </div>
                    </li>
                </div>
            </div>
        </nav>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <h2 class="text-center pt-5">Editar Perfil</h2>
                            
                            <form id="login-form" name="editarUsuario" class="form" action="validaEditarPerfil.jsp" method="post">
                                <h2 class="">Usuário</h2>
                                <div class="form-group">  
                                    <input type="text" name="IDENTIFICACAO"  id="identificacao" class="form-control" value="<%= usuSaida.getPessoa().getIdentificacao()%>" autofocus required>
                                </div>
                                <div class="form-group">  

                                    <input type="text" name="NOME" id="nome" class="form-control" maxlenght="256px" value="<%= usuSaida.getPessoa().getNome()%>" autofocus required>
                                </div>
                                <div class="form-group">                             
                                    <select class="form-control" id="opcoes" name="TIPO">
                                        <option><p><%= usuSaida.getAcesso().getTipo() %></p></option>
                                        <option class="" >Usuario</option>
                                        <option class="" >Administrador</option>
                                        <option class="" >Coletador</option>
                                    </select>
                                </div><!-- comment -->
                                <div class="form-group">                             
                                    <input type="email" name="LOGIN" id="email" class="form-control" value="<%= usuSaida.getLogin()%>" autofocus required> 
                                </div>
                                <div class="form-group">                             
                                    <input type="password" name="SENHA" id="pass" class="form-control" maxlength="50px" value="<%= usuSaida.getSenha()%>" autofocus required>
                                </div>

                                <h2 class="">Logradouro</h2>
                                <div class="form-group">                             
                                    <input type="text" name="CEP" id="cep" class="form-control" maxlenght="10px" placeholder="CEP" value="<%= usuSaida.getPessoa().getLogradouro().getCep() %>" autofocus required>
                                </div>

                                <div class="form-group">                             
                                    <input type="text" name="NOME_REGIAO" id="endereco" class="form-control" placeholder="Nome da região" value="<%= usuSaida.getPessoa().getLogradouro().getRegiao().getNome() %>" autofocus required>
                                </div>

                                <div class="form-group">                             
                                    <textArea type="text" name="DESCRICAO" id="complemento" class="form-control" maxlenght="120px"  placeholder="<%= usuSaida.getPessoa().getLogradouro().getRegiao().getDescricao() %>" autofocus required></textarea>
                                </div>

                                <div class="form-group">
                                    <div class="btn-login">       
                                        <button id="cadastrar" type="" name="Enviar" value="OK" class="btn btn-info btn-md" >Editar</button><br>

                                    </div>    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>










    </body>
</html>



<!-- 
<html>
    
    <title>ALTERAR - DISCIPLINA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR DISCIPLINA</h1>
        <form name="alterarDisciplina" action="validaAlterarDisciplina.jsp" method="post">
            Id: <input type="number" name="ID" value=""> <br>
            Nome: <input type="text" name="NOME" value=""> <br>
            Periodo: <input type="text" name="PERIODO" value=""> <br>
            Carga Horaria: <input type="number" name="CARGAH" value=""> <br>
            Curso <input type="text" name="CURSO" value="" placeholder="ex: (Em andamento/Finalizado)"> <br>
            Descrição <input type="text" name="DESCRICAO" value=""> <br>                 
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
--> 
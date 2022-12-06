<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    ControllerUsuario contUsu = new ControllerUsuario();
    Usuario usuSaida = contUsu.buscar(usuario);
%>
<!DOCTYPE html>
<html>
    <!-- Implementações estilos CSS -->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/menu.css" rel="stylesheet">
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
    <title>Menu</title>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Reciclagem</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fas fa-house-blank"></i>Início<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-calculator"></i>  Controle de Acesso
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          
                           
                            <a class="dropdown-item" href="../material/menu.jsp">Material</a>
                            
                            
                            <%if(usuSaida.getId_acesso() == 2 || usuSaida.getId_acesso() == 4){ %>
                            <a class="dropdown-item" href="../transporte/menu.jsp">Veículo</a>
                            <% } %>
                            
                            <%if(usuSaida.getId_acesso() == 1 || usuSaida.getId_acesso() == 4){%>
                            <a class="dropdown-item" href="../coleta/menu.jsp">Coleta</a>
                            <% } %>
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

                            <a class="dropdown-item" href="editarPerfil.jsp">Editar Perfil</a>
                            <a class="dropdown-item" href="login.jsp" style="color: red;">Sair</a> 
                        </div>
                    </li>
                </div>

            </div>
        </nav>
         <h1><% out.print(usuSaida.getLogin());%></h1>
         <h1><% out.print(usuSaida.getAcesso().getTipo());%></h1>
         <h1><% out.print(usuSaida.getAcesso().getId());%></h1>
    </body>
</html>
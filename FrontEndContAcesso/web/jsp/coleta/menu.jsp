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
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>MENU - COLETA </title>

    <body style=' background-color: #eceff1   ;'>

        
         <h1><% out.print(usuSaida.getLogin());%></h1>
         <h1><% out.print(usuSaida.getAcesso().getTipo());%></h1>
         <h1><% out.print(usuSaida.getAcesso().getId());%></h1>

        <div style='  position: absolute; top: 30%;left: 42%; ' class=" section">
            <%if (usuSaida.getId_acesso() == 1 || usuSaida.getId_acesso() == 4) { %>
            <a style='font-size:42pt' class='center-align' href="../coleta/agendarColeta.jsp"> Agendar Coleta</a>
            <%} %>

            <div class="center-align divider"></div>
        </div>

       
        <div style='  position: absolute; top: 90%;left: 42%; ' class=" section">
            <%if (usuSaida.getId_acesso() == 1 || usuSaida.getId_acesso() == 4) { %>
            <a style='font-size:42pt' class='center-align' href="../coleta/listarColetas.jsp"> Listar Coleta </a>
            <%}%>

            <div class="center-align divider"></div>
        </div>

        <div style='  position: absolute; top: 60%;left: 42%; ' class=" section">
            <%if (usuSaida.getId_acesso() == 4) { %>
            <a style='font-size:42pt' class='center-align' href="../coleta/excluirColeta.jsp"> Excluir Coleta</a>
            <%}%>

            <div class="center-align divider"></div>
        </div>
        <div style='  position: absolute; top: 75%;left: 42%; ' class=" section">
            <%if (usuSaida.getId_acesso() == 4) { %>

            <a style='font-size:42pt' class='center-align' href="../coleta/buscarColeta.jsp"> Buscar Coleta</a>
            <%}%>
            <div class="center-align divider"></div>
        </div>
        <div style='  position: absolute; top: 105%;left: 42%; ' class=" section">
            <%if (usuSaida.getId_acesso() == 4) { %>
            <a style='font-size:42pt' class='center-align' href="../logradouro/listarLogradouros.jsp"> Listar Logradouros</a>
            <%}%>
            <div class="center-align divider"></div>
        </div>
        <br>
        <br>

    </body>
</html>
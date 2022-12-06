<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.util.model.bean.Status"%>
<%@page import="com.recicla.util.controller.ControllerStatus"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
        <title>title</title>
    </head>
    <body>
        <%

            Status status = new Status(2);
            ControllerStatus contStatus = new ControllerStatus();
            Status statusSaida = contStatus.buscar(status);

            ControllerColeta contColeta = new ControllerColeta();
            List<Coleta> listColeta = contColeta.listarTodos();

            for (Coleta col : listColeta) {
                Usuario usu = new Usuario(col.getIdUsuarioR());
                ControllerUsuario contUsu = new ControllerUsuario();
                Usuario usuSaida = contUsu.buscar(usu);
                
                usuSaida.setId_status(statusSaida.getId());
                
                Usuario toma = contUsu.alterar(usuSaida);
                col.setUsuarioR(toma);
                Coleta novaCol = contColeta.alterar(col);
            }

            String url = "listarColetas.jsp";
            response.sendRedirect(url);

        %>

    </body>
</html>

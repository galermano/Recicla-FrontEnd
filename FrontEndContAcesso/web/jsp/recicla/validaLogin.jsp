<%@page import="com.recicla.contAcesso.model.dao.DaoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="com.recicla.contAcesso.controller.ControllerUsuario" %>
<%@page import="com.recicla.contAcesso.model.bean.Usuario" %>


<!DOCTYPE html>

<html>
    <head>
        <title>title</title>

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
                font-family: 'HK Grotesk', sans-serif;
            }

            main{
                
                background-color: #b5cbd8 ;
                margin-top: 3%;
                padding: 5%;
            }
            
            main h2{
                margin-top: 5%;
            }

            button {
                font-weight: bold;
                font-size: 10px;
                padding: 20px;
                border-radius: 40px;

            }

            a {
                color: white;
                text-decoration: none;
            }

            button:hover {
                background-color: #545454!important;
            }

            .btn-login {
                margin-top: 12px!important;
                background-color: #878787;
                font-size: 18px!important;
                font-weight: bold!important;
                cursor: pointer!important;
            }

        </style>

    </head>
    <body>

        <%
            try {
                String login = request.getParameter("EMAIL");
                String senha = request.getParameter("SENHA");

                Usuario usuEntrada = new Usuario(login, senha);
                DaoUsuario contUsu = new DaoUsuario();
                Usuario usuSaida = contUsu.validar(usuEntrada);

                String url;

                if (usuSaida.getLogin().equals(login) && usuSaida.getSenha().equals(senha)) {
                    url = "menu.jsp";

                } else {
                    url = "login.jsp";
                }

                response.sendRedirect(url);

            } catch (NullPointerException e) {

        %>
        <main>
            <h1>Informações não estão no banco </h1>
            <h2>Voltar para a tela de Login?</h2>
            <br> <button type="submit" class="btn-login " value="Voltar"><a href="login.jsp">Fazer Login</a></button>


            <h2>Deseja fazer o cadastro?</h2>
            <br> <button type="submit" class="btn-login " value="Voltar"><a href="cadastro.jsp">Fazer Cadastro</a></button>
        </main>

        <%            }
        %>
    </body>
</html>

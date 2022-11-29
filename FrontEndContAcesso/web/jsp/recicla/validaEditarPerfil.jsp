<%-- 
    Document   : validaEditarPerfil
    Created on : Nov 29, 2022, 2:26:02 PM
    Author     : 017172631
--%>

<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerRegiao"%>
<%@page import="com.recicla.coleta.model.bean.Regiao"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String identificacao = request.getParameter("IDENTIFICACAO");
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String cep = request.getParameter("CEP");
    String nome_regiao = request.getParameter("NOME_REGIAO");
    String descricao_regiao = request.getParameter("DESCRICAO");

    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    Date data_inicio = new Date();
    Date data_fim = formatter.parse("13-08-2023");

    Usuario usuario = (Usuario) session.getAttribute("usuario");
    ControllerUsuario contUsu = new ControllerUsuario();
    Usuario usuSaida = contUsu.buscar(usuario);

    int id_regiao = usuSaida.getPessoa().getLogradouro().getRegiao().getId();

    Regiao regiaoEntrada = new Regiao(id_regiao, nome_regiao, descricao_regiao);
    ControllerRegiao contRegiao = new ControllerRegiao();
    Regiao regiaoSaida = contRegiao.alterar(regiaoEntrada);

    int id_logradouro = usuSaida.getPessoa().getLogradouro().getId();

    Logradouro logEntrada = new Logradouro(id_logradouro, id_regiao, cep);
    ControllerLogradouro contLog = new ControllerLogradouro();
    Logradouro logSaida = contLog.alterar(logEntrada);

    int id_pessoa = usuSaida.getPessoa().getId();

    Pessoa pesEntrada = new Pessoa(id_pessoa, nome, identificacao, id_logradouro);
    ControllerPessoa contPes = new ControllerPessoa();
    Pessoa pesSaida = contPes.alterar(pesEntrada);

//    Status statusEntrada = new Status("ativo","logado");
//    ControllerStatus contStatus = new ControllerStatus();
//    Status statusSaida = contStatus.inserir(statusEntrada);
//    
//    int id_status = statusSaida.getId();
//    int id_acesso = 0;
    int id_usuario = usuSaida.getId();

    if (tipo.toLowerCase().equals("coletador")) {
//        Modulo moduloSaida = new Modulo(4);
//        DaoModulo daoMod = new DaoModulo();
//        moduloSaida = daoMod.buscar(moduloSaida);
//
//        int id_modulo = moduloSaida.getId();

//        Acesso acessEntrada = new Acesso(id_modulo, tipo);
//        ControllerAcesso contAcesso = new ControllerAcesso();
//        Acesso acessSaida = contAcesso.inserir(acessEntrada);
//        id_acesso = acessSaida.getId();
        Usuario newCol = new Usuario(id_usuario, id_pessoa, 1, 3, login, senha,
                new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuAlterado = contCol.alterar(newCol);

    } else if (tipo.toLowerCase().equals("usuario")) {
//        Modulo moduloSaida = new Modulo(1);
//        DaoModulo daoMod = new DaoModulo();
//        moduloSaida = daoMod.buscar(moduloSaida);
//
//        int id_modulo = moduloSaida.getId();
//        Acesso acessEntrada = new Acesso(id_modulo, tipo);
//        ControllerAcesso contAcesso = new ControllerAcesso();
//        Acesso acessSaida = contAcesso.buscar(acessEntrada);
//        id_acesso = acessSaida.getId();

        Usuario newCol = new Usuario(id_usuario, id_pessoa, 1, 1, login, senha,
                new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuAlterado = contCol.alterar(newCol);

    } else {
//        Modulo moduloSaida = new Modulo(5);
//        DaoModulo daoMod = new DaoModulo();
//        moduloSaida = daoMod.buscar(moduloSaida);
//
//        int id_modulo = moduloSaida.getId();
//        Acesso acessEntrada = new Acesso(id_modulo, tipo);
//        ControllerAcesso contAcesso = new ControllerAcesso();
//        Acesso acessSaida = contAcesso.inserir(acessEntrada);
//        id_acesso = acessSaida.getId();

        Usuario newCol = new Usuario(id_usuario, id_pessoa, 1, 4, login, senha,
                new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuAlterado = contCol.alterar(newCol);

    }

    String url = "editarPerfil.jsp";
    response.sendRedirect(url);


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

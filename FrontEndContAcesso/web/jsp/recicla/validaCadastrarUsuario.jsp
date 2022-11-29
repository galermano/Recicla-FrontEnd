<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerRegiao"%>
<%@page import="com.recicla.coleta.model.bean.Regiao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="com.recicla.contAcesso.model.dao.DaoModulo" %>
<%@page import="com.recicla.contAcesso.model.bean.Modulo" %>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario" %>
<%@page import="com.recicla.contAcesso.controller.ControllerAcesso" %>
<%@page import="com.recicla.contAcesso.controller.ControllerPessoa" %>
<%@page import="com.recicla.util.controller.ControllerStatus" %>
<%@page import="com.recicla.contAcesso.model.bean.Usuario" %>
<%@page import="com.recicla.contAcesso.model.bean.Acesso" %>
<%@page import ="com.recicla.contAcesso.model.bean.Pessoa" %>
<%@page import ="com.recicla.util.model.bean.Status" %>


<!DOCTYPE html>
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

    Regiao regiaoEntrada = new Regiao(nome_regiao, descricao_regiao);
    ControllerRegiao contRegiao = new ControllerRegiao();
    Regiao regiaoSaida = contRegiao.inserir(regiaoEntrada);

    int id_regiao = regiaoSaida.getId();

    Logradouro logEntrada = new Logradouro(id_regiao, cep);
    ControllerLogradouro contLog = new ControllerLogradouro();
    Logradouro logSaida = contLog.inserir(logEntrada);

    int id_logradouro = logSaida.getId();

    Pessoa pesEntrada = new Pessoa(nome, identificacao, id_logradouro);
    ControllerPessoa contPes = new ControllerPessoa();
    Pessoa pesSaida = contPes.inserir(pesEntrada);
    int id_pessoa = pesSaida.getId();

    int id_acesso = 0;

    if (tipo.toLowerCase().equals("coletador")) {
        Modulo moduloSaida = new Modulo(4);
        DaoModulo daoMod = new DaoModulo();
        moduloSaida = daoMod.buscar(moduloSaida);

        int id_modulo = moduloSaida.getId();
        Acesso acessEntrada = new Acesso(id_modulo, tipo);
        ControllerAcesso contAcesso = new ControllerAcesso();
        Acesso acessSaida = contAcesso.inserir(acessEntrada);
        id_acesso = acessSaida.getId();

        Usuario newCol = new Usuario(id_pessoa, id_acesso, 1, login, senha,
                new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuSaida = contCol.inserir(newCol);

    } else if (tipo.toLowerCase().equals("usuário")) {
        Modulo moduloSaida = new Modulo(1);
        DaoModulo daoMod = new DaoModulo();
        moduloSaida = daoMod.buscar(moduloSaida);

        int id_modulo = moduloSaida.getId();
        Acesso acessEntrada = new Acesso(id_modulo, tipo);
        ControllerAcesso contAcesso = new ControllerAcesso();
        Acesso acessSaida = contAcesso.inserir(acessEntrada);
        id_acesso = acessSaida.getId();

        Usuario newCol = new Usuario(id_pessoa, id_acesso, 1, login, senha,
                new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuSaida = contCol.inserir(newCol);

    } else {
        Modulo moduloSaida = new Modulo(5);
        DaoModulo daoMod = new DaoModulo();
        moduloSaida = daoMod.buscar(moduloSaida);

        int id_modulo = moduloSaida.getId();
        Acesso acessEntrada = new Acesso(id_modulo, tipo);
        ControllerAcesso contAcesso = new ControllerAcesso();
        Acesso acessSaida = contAcesso.inserir(acessEntrada);
        id_acesso = acessSaida.getId();

        Usuario newCol = new Usuario(id_pessoa, 1, id_acesso, login, senha,
        new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
        ControllerUsuario contCol = new ControllerUsuario();
        Usuario usuSaida = contCol.inserir(newCol);

    }

    String url = "login.jsp";
    response.sendRedirect(url);

//        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
//        Date data_inicio = new Date();
//        Date data_fim = formatter.parse("30-11-2022");
//
//
//    String identificacao = request.getParameter("IDENTIFICACAO");
//    String strArr = identificacao.split(".", 5).toString();
//    String strArrAux = strArr.split("/", 5).toString();
//    String strArrAux2 = strArrAux.split("/", 5).toString();
//
//
//    String nome = request.getParameter("NOME");
//    int tipo = Integer.parseInt(request.getParameter("TIPO"));
//    String login = request.getParameter("LOGIN");
//    String senha = request.getParameter("SENHA");
//    
//    int id_logradouro = 1;
//    
//    Pessoa pesEntrada = new Pessoa(nome, Integer.parseInt(strArrAux2), tipo, id_logradouro);
//    ControllerPessoa contPes = new ControllerPessoa();
//    Pessoa pesSaida = contPes.inserir(pesEntrada);
//    
//    int id_pessoa = pesSaida.getId();
//
//    Status statusEntrada = new Status("On", "teste");
//    ControllerStatus contStatus = new ControllerStatus();
//    Status statusSaida = contStatus.inserir(statusEntrada);
//    
//    int id_status = statusSaida.getId();
//
//    Acesso acesEntrada = new Acesso(1, "Adm");
//    ControllerAcesso contAcesso = new ControllerAcesso();
//    Acesso acesSaida = contAcesso.inserir(acesEntrada);
//    
//    int id_acesso = acesSaida.getId();
//    
//    Usuario usu = new Usuario(id_pessoa,id_acesso,id_status,login, senha, data_inicio, data_fim );
//    ControllerUsuario contUsu = new ControllerUsuario();
//    Usuario usuSaida = contUsu.inserir(usu);
//    
%>

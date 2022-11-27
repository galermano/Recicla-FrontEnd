<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    int tipo = Integer.parseInt(request.getParameter("TIPO"));
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    Date data_inicio = new Date();
    Date data_fim = formatter.parse("30-11-2022");

    Usuario newCol = new Usuario(2, 1, 1, login, senha,
    new java.sql.Date(data_inicio.getTime()), new java.sql.Date(data_fim.getTime()));
    ControllerUsuario contCol = new ControllerUsuario();
    Usuario usuSaida = contCol.inserir(newCol);
    
    Pessoa pesEntrada = new Pessoa(nome, identificacao, tipo, 1);
    ControllerPessoa contPes = new ControllerPessoa();
    Pessoa pesSaida = contPes.inserir(pesEntrada);
    
   String url = "cadastro.jsp";
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

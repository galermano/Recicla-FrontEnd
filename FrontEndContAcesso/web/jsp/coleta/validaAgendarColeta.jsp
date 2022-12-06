<%@page import="com.recicla.material.model.bean.Material"%>
<%@page import="com.recicla.material.controller.ControllerMaterial"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
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
    
    int status =  Integer.parseInt(request.getParameter("STATUS"));
    int logc = Integer.parseInt(request.getParameter("LOGC"));
    int loge = Integer.parseInt(request.getParameter("LOGE"));
    int usuc = Integer.parseInt(request.getParameter("USUC"));
    int usue = Integer.parseInt(request.getParameter("USUE"));
    String compl = request.getParameter("COMPL");
    int quant = Integer.parseInt(request.getParameter("QUANT"));
    String matsid = request.getParameter("MATSID");
    
    Date data_inicio = new Date();

    String[] ids = matsid.split(",");
    
    ControllerMaterial contMat = new ControllerMaterial();

    Coleta newCol = new Coleta(status, compl, quant, new java.sql.Date(data_inicio.getTime()), logc, loge, usuc, usue);
	ControllerColeta contCol = new ControllerColeta();
	Coleta colSai = contCol.inserir(newCol);
	
    
    for(String idM : ids){
    	Material mat = contMat.buscar(new Material(Integer.parseInt(idM)));
    	mat.setId_coleta(colSai.getId());
    	contMat.alterar(mat);
    }
    
    
   String url = "menu.jsp";
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

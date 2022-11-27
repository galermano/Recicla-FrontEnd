<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerRegiao"%>
<%@page import="com.recicla.coleta.model.bean.Regiao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
        
    String compl = request.getParameter("COMPL");
    String end = request.getParameter("END");
    String cep = request.getParameter("CEP");


    Regiao newReg = new Regiao(end, compl);
	ControllerRegiao contReg = new ControllerRegiao();
	Regiao regSai = contReg.inserir(newReg);
	
	ControllerLogradouro contLog = new ControllerLogradouro();
	Logradouro logSai = contLog.inserir(new Logradouro(regSai.getId(), cep));
    
   String url = "../coleta/menu.jsp";
   response.sendRedirect(url);

//    
%>

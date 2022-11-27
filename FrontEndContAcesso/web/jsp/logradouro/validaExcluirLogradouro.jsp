<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 

int status =  Integer.parseInt(request.getParameter("ID"));

Logradouro newCol = new Logradouro(status);
ControllerLogradouro contCol = new ControllerLogradouro();
Logradouro logSai = contCol.excluir(newCol);

String url = "../coleta/menu.jsp";
response.sendRedirect(url);

%>
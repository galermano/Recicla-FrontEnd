<%@page import="java.util.Date"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 

int status =  Integer.parseInt(request.getParameter("ID"));

Coleta newCol = new Coleta(status);
ControllerColeta contCol = new ControllerColeta();
Coleta colSai = contCol.excluir(newCol);

String url = "menu.jsp";
response.sendRedirect(url);

%>
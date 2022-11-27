<%@page import="com.recicla.transporte.controller.ControllerVeiculo"%>
<%@page import="com.recicla.transporte.model.bean.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% 
	int id =  Integer.parseInt(request.getParameter("ID"));
    String placa =  request.getParameter("PLACA");
    int capacidade =  Integer.parseInt(request.getParameter("CAPACIDADE"));
    int tipo = Integer.parseInt(request.getParameter("TIPO"));
    int usu = Integer.parseInt(request.getParameter("USUARIO"));


    Veiculo newVei = new Veiculo(id, placa, tipo, capacidade, usu);
	ControllerVeiculo contVei = new ControllerVeiculo();
	Veiculo veiSai = contVei.alterar(newVei);
    
   String url = "menu.jsp";
   response.sendRedirect(url);
    
%>

<%@page import="com.recicla.material.controller.ControllerTipoMaterial"%>
<%@page import="com.recicla.material.model.bean.TipoMaterial"%>
<%@page import="com.recicla.material.controller.ControllerMaterial"%>
<%@page import="com.recicla.material.model.bean.Material"%>
<%@page import="java.util.Date"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 

int id_material =  Integer.parseInt(request.getParameter("ID"));

Material newCol = new Material(id_material);
ControllerMaterial contMaterial = new ControllerMaterial();
Material colSai = contMaterial.buscar(newCol);
//
//TipoMaterial tipoMat = new TipoMaterial(colSai.getTipoMat().getId());
//ControllerTipoMaterial contTipoMaterial = new ControllerTipoMaterial();
//TipoMaterial tipoMatSaida = contTipoMaterial.buscar(tipoMat);
//
//contTipoMaterial.excluir(tipoMatSaida);

contMaterial.excluir(colSai);

String url = "menu.jsp";
response.sendRedirect(url);

%>
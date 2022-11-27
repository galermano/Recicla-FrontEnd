<%@page import="com.recicla.material.controller.ControllerMaterial"%>
<%@page import="com.recicla.material.model.bean.Material"%>

<%@page import="com.recicla.material.controller.ControllerTipoMaterial"%>
<%@page import="com.recicla.material.model.bean.TipoMaterial"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("NOME");
    int id_tipo_material = Integer.parseInt(request.getParameter("ID_TIPO_MATERIAL"));
    String descricao = request.getParameter("DESCRICAO");

    Material matEntrada = new Material(id_tipo_material, nome, descricao);
    ControllerMaterial contMat = new ControllerMaterial();
    Material matSaida = contMat.alterar(matEntrada);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirMaterial.jsp";
    response.sendRedirect(url);
%>
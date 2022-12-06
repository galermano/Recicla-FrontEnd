<%@page import="com.recicla.material.controller.ControllerTipoMaterial"%>
<%@page import="com.recicla.material.model.bean.TipoMaterial"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("NOME");
    String descricao = request.getParameter("DESCRICAO");
    String especificacao = request.getParameter("ESPECIFICACAO");

    TipoMaterial matEntrada = new TipoMaterial(nome, descricao, especificacao);
    ControllerTipoMaterial contMat = new ControllerTipoMaterial();
    TipoMaterial matSaida = contMat.inserir(matEntrada);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirMaterial.jsp";
    response.sendRedirect(url);
%>
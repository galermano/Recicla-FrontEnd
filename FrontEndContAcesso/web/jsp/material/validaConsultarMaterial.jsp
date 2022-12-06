<%@page import="com.recicla.material.controller.ControllerMaterial"%>
<%@page import="com.recicla.material.model.bean.Material"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = "A";
    Material matEntrada = new Material(nome);
    ControllerMaterial materialCont = new ControllerMaterial();
    List<Material> matSaida = materialCont.listar(matEntrada);
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
        <link href="../../css/agendarColeta.css" rel="stylesheet">

    <title>LISTA MATERIAL</title>
    <body>
            <% if (!(matSaida.isEmpty())) { %>    
            <div class="row">
                <% for (Material listaMaterial : matSaida) {%>
                <div class="col-sm-6">
                    <div class="card">
                        <form action="validaBuscarColeta.jsp">
                            <div style="padding:3%" class="card-body">
                                <h5 class="card-title">Id Material:<%=listaMaterial.getId()%></h5>
                                <h2 class="card-title">Nome material: <%=listaMaterial.getNome()%></h2>
                                <h2 class="card-title">Tipo Material: <%=listaMaterial.getTipoMat().getNome() %></h2>
                                <h2 class="card-title">Descricao:  <%=listaMaterial.getTipoMat().getDescricao()%> </h2>   
                                <button type="submit" class="btn btn-primary"><a href="excluirMaterial.jsp?<%=url + listaMaterial.getId()%>">Excluir</a></button>
                            </div>
                        </form>
                    </div>
                </div>
                <% }%>
            </div>
            <% }%>  
    </body>
</html>
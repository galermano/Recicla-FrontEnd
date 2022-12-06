<%@page import="com.recicla.material.controller.ControllerTipoMaterial"%>
<%@page import="com.recicla.material.model.bean.TipoMaterial"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = "";
    TipoMaterial matEntrada = new TipoMaterial(nome);
    ControllerTipoMaterial materialCont = new ControllerTipoMaterial();
    List<TipoMaterial> matSaida = materialCont.listar(matEntrada);
    String url = "PBUSCA=" + nome + "&ID=";
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
        <link href="../../css/agendarColeta.css" rel="stylesheet">

    <title>LISTA MATERIAL</title>
    <body>
            <% if (!(matSaida.isEmpty())) { %>    
            <div class="row">
                <% for (TipoMaterial listaTipoMaterial : matSaida) {%>
                <div class="col-sm-6">
                    <div class="card">
                        <form action="validaBuscarTipoMaterial.jsp">
                            <div style="padding:3%" class="card-body">
                                <h5 class="card-title">Id tipo Material:<%=listaTipoMaterial.getId()%></h5>
                                <h2 class="card-title">Tipo Material: <%=listaTipoMaterial.getEspecificacao()%></h2>
                                <h2 class="card-title">Especificação:  <%=listaTipoMaterial.getNome()%> </h2>
                                <h2 class="card-title">Descrição:  <%=listaTipoMaterial.getDescricao()%> </h2>   
                                <button type="submit" class="btn btn-primary"><a href="excluirMaterial.jsp?<%=url + listaTipoMaterial.getId()%>">Excluir</a></button>
                            </div>
                        </form>
                    </div>
                </div>
                <% }%>
            </div>
            <% }%>  
    </body>
</html>
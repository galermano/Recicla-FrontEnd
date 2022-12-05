<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="java.util.List"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
ControllerColeta contCol = new ControllerColeta();
List<Coleta> colSai = contCol.listarTodos();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/agendarColeta.css" rel="stylesheet">
    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <%@include file="../../inc/materalizeWeb.inc" %>

<title>Listar Coletas</title>
</head>
<body>
	<div class="row">
		<% for(Coleta col : colSai) { %>
			<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Id da Coleta: <%= col.getId() %></h5>
					<p class="card-text"> O usuário: <%= new ControllerPessoa().buscar(new Pessoa(new ControllerUsuario().buscar(new Usuario(col.getIdUsuarioR())).getId_pessoa())).getNome() %> requeriu
					uma entrega do CEP: <%= new ControllerLogradouro().buscar(new Logradouro(col.getIdLogradouroR())).getCep() %> para o CEP: <%= new ControllerLogradouro().buscar(new Logradouro(col.getIdLogradouroE())).getCep() %>
					atribuida para o usuário: <%= new ControllerPessoa().buscar(new Pessoa(new ControllerUsuario().buscar(new Usuario(col.getIdUsuarioE())).getId_pessoa())).getNome() %></p>
					
					<div class="d-flex">
						<form action="validaConcluirColeta.jsp" style="margin-right: 40px">
							<input name="ID" value="<%= col.getId() %>" style="display: none"/>
							<button type="submit" class="btn btn-primary">Concluir</button>
						</form>
						<form action="validaBuscarColeta.jsp">
							<input name="ID" value="<%= col.getId() %>" style="display: none"/>
							<button type="submit" class="btn btn-primary">Detalhes</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<% } %>
	</div>
</body>
</html>
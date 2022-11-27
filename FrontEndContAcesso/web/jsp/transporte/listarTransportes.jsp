<%@page import="com.recicla.transporte.controller.ControllerVeiculo"%>
<%@page import="com.recicla.transporte.model.bean.Veiculo"%>
<%@page import="com.recicla.transporte.model.bean.Transporte"%>
<%@page import="com.recicla.transporte.controller.ControllerTransporte"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
ControllerVeiculo contCol = new ControllerVeiculo();
List<Veiculo> colSai = contCol.listarTodos();
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
		<% for(Veiculo col : colSai) { %>
			<div class="col-sm-6">
			<div class="card">
				<form action="validaBuscarTransporte.jsp">
					<div class="card-body">
						<h5 class="card-title">Id do Transporte: <%= col.getId() %></h5>
						<p class="card-text"> Placa: <%= col.getPlaca() %></p>
						<input name="ID" value="<%= col.getId() %>" style="display: none"/>
						<button type="submit" class="btn btn-primary">Detalhes</button>
					</div>
				</form>
			</div>
		</div>
		<% } %>
	</div>
</body>
</html>
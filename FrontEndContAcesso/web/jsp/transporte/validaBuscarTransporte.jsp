
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.transporte.model.bean.TipoVeiculo"%>
<%@page import="com.recicla.transporte.controller.ControllerTipoVeiculo"%>
<%@page import="com.recicla.transporte.controller.ControllerVeiculo"%>
<%@page import="com.recicla.transporte.model.bean.Veiculo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<% 


int status =  Integer.parseInt(request.getParameter("ID"));

Veiculo newCol = new Veiculo(status);
ControllerVeiculo contCol = new ControllerVeiculo();
Veiculo veiSai = contCol.buscar(newCol);

%>

<!DOCTYPE html>
<html>
<head>
<!-- Implementações estilos CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/agendarColeta.css" rel="stylesheet">
    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <%@include file="../../inc/materalizeWeb.inc" %>

	<title>Buscar Transporte</title>
</head>
<body>
	    <body>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <h3 class="text-center text-white pt-5"><br>Transporte ID: <%= status %></h3>

							<%                                     
							ControllerTipoVeiculo contTv = new ControllerTipoVeiculo();
                            TipoVeiculo tpvei = contTv.buscar(new TipoVeiculo(veiSai.getIdtipo()));

                            
                            ControllerUsuario contUsu = new ControllerUsuario();
                            Usuario usu = contUsu.buscar(new Usuario(veiSai.getIdusuario()));
                            %>

                            <form id="login-form" name="cadastrarTransporte" class="form" action="validaInserirTransporte.jsp" method="post">
                                    <div class="form-group">  
                                        <input type="text" value="<%= veiSai.getPlaca() %>" name="PLACA"  id="PLACA" class="form-control" placeholder="Placa" autofocus disabled="disabled">
                                    </div>
                                    
                                    <div class="form-group">                             
                                        <input type="number" value="<%= veiSai.getCapacidade() %>" name="CAPACIDADE" id="CAPACIDADE" class="form-control" disabled="disabled" maxlenght="256px" placeholder="Capacidade" autofocus required>
                                    </div>
                            
                                    <div class="form-group">                             
                                        <select class="form-control" autofocus required id="opcoes" name="TIPO" disabled="disabled">
                                            <option><%= tpvei.getNome() %> </option>
                                        </select>
                                    </div> 
                                        <div class="form-group">                             
                                        <select class="form-control" id="opcoes" name="USUARIO" disabled="disabled">
                                            <option><%= new ControllerPessoa().buscar(new Pessoa(usu.getId_pessoa())).getNome()  %></option>
                                        </select>
                                        </div>
                                        
                                    </div><!-- comment -->
                                    
                                    <div class="form-group">
                                        <div class="btn-login">       
                                            <label  class="text-info"><a href="menu.jsp">Voltar</a></label>        
                                        </div>    
                                    </div>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320" style="padding-top: 10%;">
                <path fill="#808080" fill-opacity="1" d="M0,160L60,160C120,160,240,160,360,165.3C480,171,600,181,720,170.7C840,160,960,128,1080,117.3C1200,107,1320,117,1380,122.7L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
        </svg>

        <div class="rodape pn">
            <div class="t-center">
                © 2022 ADS FATEC 
            </div>
        </div>
    </body>

</body>
</html>
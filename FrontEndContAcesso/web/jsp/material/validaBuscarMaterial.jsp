<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.util.model.bean.Status"%>
<%@page import="com.recicla.util.controller.ControllerStatus"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.coleta.model.bean.Logradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerLogradouro"%>
<%@page import="com.recicla.coleta.controller.ControllerColeta"%>
<%@page import="com.recicla.coleta.model.bean.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<% 


int status =  Integer.parseInt(request.getParameter("ID"));

Coleta newCol = new Coleta(status);
ControllerColeta contCol = new ControllerColeta();
Coleta colSai = contCol.buscar(newCol);

%>

<!DOCTYPE html>
<html>
<head>
<!-- Implementa��es estilos CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/cadastro.css" rel="stylesheet">
    <!-- Implementa��es SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <%@include file="../../inc/materalizeWeb.inc" %>

	<title>Buscar Material</title>
</head>
<body>
	    <body>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <h3 class="text-center text-white pt-5"><br>Buscar Material</h3>

							<%                                     
							ControllerLogradouro contLog = new ControllerLogradouro();
                            Logradouro logc = contLog.buscar(new Logradouro(colSai.getIdLogradouroE()));
                            Logradouro loge = contLog.buscar(new Logradouro(colSai.getIdLogradouroR()));

                            
                            ControllerUsuario contUsu = new ControllerUsuario();
                            Usuario usuc = contUsu.buscar(new Usuario(colSai.getIdUsuarioR()));
                            Usuario usue = contUsu.buscar(new Usuario(colSai.getIdUsuarioE()));
                            
                            ControllerStatus contSta = new ControllerStatus();
                            Status sta = contSta.buscar(new Status(colSai.getIdStatus()));
                            %>

                            <form id="login-form" class="form" action="menu.jsp" method="post">

                                <div class="form-group">
                                	<label>Status</label>  
                                    <select name="STATUS" id="status" class="form-control" autofocus required>
                                    <option value="#"> <%= sta.getNome() %> </option>
                                    </select>
                                </div>
                                <div class="form-group">  
                                    <label>Logradouro de Coleta</label>  
                                    <select name="LOGC" id="logc" class="form-control" autofocus  required>
                                    <option value="#"> <%= logc.getCep() %> </option>
                                    </select>
                                </div>
                                <div class="form-group">  
                                    <label>Logradouro de Entrega</label>  
                                    <select name="LOGE" id="loge" class="form-control" autofocus required>
                                     <option value="#"> <%= loge.getCep() %> </option>

                                    </select>
                                </div>
                                
                                <div class="form-group">  
                                    <label>Usuario de Coleta</label>  
                                    <select name="USUC" id="usuc" class="form-control" autofocus required>
                                    <option value="#"> <%= new ControllerPessoa().buscar(new Pessoa(usuc.getId_pessoa())).getNome()%> </option>
                                    </select>
                                </div>
                                <div class="form-group">  
                                    <label>Usuario de Entrega</label>  
                                    <select name="USUE" id="usue" class="form-control" autofocus required>
                                    <option value="#"> <%= new ControllerPessoa().buscar(new Pessoa(usue.getId_pessoa())).getNome()%> </option>

                                    </select>
                                </div>
                                
                                <div class="form-group">  
                                    <input type="text" value="<%= colSai.getCompl() %>" name="COMPL" id="compl" class="form-control" placeholder="Complemento" autofocus required>
                                </div>

                                <div class="form-group">                             
                                    <input type="number" value="<%= colSai.getQuantidade() %>" name="QUANT" id="quantidade" class="form-control" placeholder="Quantidade" autofocus required>
                                </div>

                                

                                <div class="form-group">

                                    <div class="btn-login">
                                        
                                        <button id="entrar" type="submit" name="ENVIAR" value="ENVIAR" class="btn btn-info btn-md" >Voltar</button><br>
                                    </div>  

                                    
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320" style="padding-top: 10%;">
        ��      <path fill="#808080" fill-opacity="1" d="M0,160L60,160C120,160,240,160,360,165.3C480,171,600,181,720,170.7C840,160,960,128,1080,117.3C1200,107,1320,117,1380,122.7L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
        </svg>

        <div class="rodape pn">
            <div class="t-center">
                � 2022 ADS FATEC 
            </div>
        </div>
    </body>

</body>
</html>
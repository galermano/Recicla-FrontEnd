<%@page import="com.recicla.material.controller.ControllerTipoMaterial"%>
<%@page import="com.recicla.material.model.bean.TipoMaterial"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<%

    int id_tipo_material = Integer.parseInt(request.getParameter("ID"));

    TipoMaterial materialEntrada = new TipoMaterial(id_tipo_material);
    ControllerTipoMaterial contTipoMaterial = new ControllerTipoMaterial();
    TipoMaterial matSaida = contTipoMaterial.buscar(materialEntrada);


%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Implementaï¿½ï¿½es estilos CSS -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
        <link href="../../css/cadastro.css" rel="stylesheet">
        <!-- Implementaï¿½ï¿½es SCRIPTS, PLUGINS e ETC -->
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
                            <h1 class="text-center text-white pt-5">Buscar Material</h1>



                            <form id="login-form" class="form" action="menu.jsp" method="post">

                                <h2>Tipo de material</h2>


                                <div class="form-group">
                                    <h6 class="titleInput">Nome do material</h6>
                                    <input type="text" name="ESPECIFICACAO" id="specifMaterial" value="<%= matSaida.getEspecificacao()%>" class="form-control" autofocus required readonly/>
                                </div>


                                <div class="form-group">
                                    <h6 class="titleInput">Descrição do Material</h6>
                                    <input type="text" name="NOME" id="nameMaterial" class="form-control" value="<%= matSaida.getNome()%>" autofocus required readonly />
                                </div>

                                <div class="form-group">
                                    <h6 class="titleInput">Especificação do material</h6>
                                    <input type="text" name="DESCRICAO" id="descMaterial" class="form-control" value="<%= matSaida.getDescricao()%>" autofocus required readonly/>
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
        ï¿½ï¿½      <path fill="#808080" fill-opacity="1" d="M0,160L60,160C120,160,240,160,360,165.3C480,171,600,181,720,170.7C840,160,960,128,1080,117.3C1200,107,1320,117,1380,122.7L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path>
        </svg>

        <div class="rodape pn">
            <div class="t-center">
                ï¿½ 2022 ADS FATEC 
            </div>
        </div>
    </body>

</body>
</html>
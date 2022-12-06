<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - MATERIAL</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR MATERIAL</h1>
       <form name="ConsultarMaterial" action="validaConsultarTipoMaterial.jsp" method="post">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>

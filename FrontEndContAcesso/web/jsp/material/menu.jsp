<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>MENU - Material</title>

    <body style="background-color: #eceff1">
        <div style="width: 50%; height: 100%; border-right: 1px solid black; float: left">
            <h1 style="text-align: center">Gerenciar material</h1>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="inserirMaterial.jsp"
                   >Cadastrar material</a
                >
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="buscarMaterial.jsp">
                    Buscar material
                </a>
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="validaConsultarMaterial.jsp">
                    Listar material
                </a>
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="excluirMaterial.jsp">
                    Excluir material
                </a>
                <div class="center-align divider"></div>
            </div>
        </div>
        <div style="width: 50%; height: 100%; border-right: 1px solid black; float: right">
            <h1 style="text-align: center">Gerenciar tipo material</h1>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="inserirTipoMaterial.jsp"
                   >Cadastrar tipo material
                </a>
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="buscarTipoMaterial.jsp">
                    Buscar tipo material
                </a>
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="validaConsultarTipoMaterial.jsp">
                    Listar tipo material
                </a>
                <div class="center-align divider"></div>
            </div>
            <div style="text-align: center" class="section">
                <a style="font-size: 42pt" class="center-align" href="excluirTipoMaterial.jsp">
                    Excluir tipo material
                </a>
                <div class="center-align divider"></div>
            </div>
        </div>
    </body>
</html>

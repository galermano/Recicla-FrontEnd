<%@page import="com.recicla.contAcesso.controller.ControllerPessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Pessoa"%>
<%@page import="com.recicla.contAcesso.model.bean.Usuario"%>
<%@page import="com.recicla.contAcesso.controller.ControllerUsuario"%>
<%@page import="com.recicla.transporte.controller.ControllerVeiculo"%>
<%@page import="com.recicla.transporte.model.bean.Veiculo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.recicla.transporte.model.bean.TipoVeiculo"%>
<%@page import="java.util.List"%>
<%@page import="com.recicla.transporte.controller.ControllerTipoVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!-- Implementações estilos CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'>
    <link href="../../css/registro.css" rel="stylesheet">
    <!-- Implementações SCRIPTS, PLUGINS e ETC -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>Cadastro de Veiculo</title>
    <body>
        <div id="login">
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <h3 class="text-center text-white pt-5">Cadastro de Veiculo</h3>
                            
                            <%
                            ControllerTipoVeiculo contTv = new ControllerTipoVeiculo();
                            List<TipoVeiculo> tpvei = contTv.listarTodos();
                            ArrayList<TipoVeiculo> tipos = new ArrayList<TipoVeiculo>();
                            tipos.addAll(tpvei);
                            
                            ControllerUsuario contUsu = new ControllerUsuario();
                            List<Usuario> usus = contUsu.listarTodos();
                            ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
                            usuarios.addAll(usus);
                            %>
                             
                            <form id="login-form" name="cadastrarTransporte" class="form" action="validaInserirTransporte.jsp" method="post">
                                    <div class="form-group">  
                                        <input type="text" name="PLACA"  id="PLACA" class="form-control" placeholder="Placa" autofocus required>
                                    </div>
                                    
                                    <div class="form-group">                             
                                        <input type="number" name="CAPACIDADE" id="CAPACIDADE" class="form-control" maxlenght="256px" placeholder="Capacidade" autofocus required>
                                    </div>
                            
                                    <div class="form-group">                             
                                        <select class="form-control" autofocus required id="opcoes" name="TIPO">
                                            <option>Selecione um Tipo</option>
                                             <% for(TipoVeiculo tip : tipos) { 
                                    		%>
                                    			<option value="<%= tip.getId() %>"> <%= tip.getNome() %></option>
                                    		<% } %>
                                        </select>
                                        
                                        <div class="form-group">                             
                                        <select class="form-control" id="opcoes" name="USUARIO">
                                            <option>Selecione um Usuario</option>
                                            <% for(Usuario usu : usuarios) { 
                                    			Pessoa p = new ControllerPessoa().buscar(new Pessoa(usu.getId_pessoa()));
                                    		%>
                                    			<option value="<%= usu.getId() %>"> <%= p.getNome() %> (ID: <%= usu.getId() %>)</option>
                                    		<% } %>
                                        </select>
                                        
                                        
                                    </div><!-- comment -->
                                    
                                    <div class="form-group">
                                        <div class="btn-login">       
                                            <button id="cadastrar" type="" name="Enviar" value="OK" class="btn btn-info btn-md" >Cadastrar</button><br>
                                            <label  class="text-info"><a href="menu.jsp">Voltar</a></label>        
                                        </div>    
                                    </div>
                                </form>
                            <!-- 
                            <div id="opCadastro" class="">
                                <li><a href="">Cadastro Usuário</a></li>
                                <li><a href="">Cadastro Logradouro</a></li>
                            </div>
                            -->
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
         <script type="text/javascript">
            let input = document.getElementById('pass'),
                i = document.getElementById('eye');
                i.addEventListener('click', function() {
                    if (input.type == 'password') {
                            input.type = 'text';
                            this.style.opacity = "1"
                    } else{
                        input.type = "password";
                        this.style.opacity = ".3"
                    } 
                });
        </script>
        <script>
            document.getElementById('identificacao').addEventListener('input', function(e) {
                let x = e.target.value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,3})(\d{0,3})(\d{0,4})(\d{0,2})/);
                e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + (x[3] ? '.' : '') + x[3] + (x[4] ? '/' : x[4]) + x[4] + (x[5] ? '-' + x[5] : '');
                  
                if(e.target.value.length < 15) {
                    x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,3})(\d{0,3})(\d{0,2})/);
                    e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + (x[3] ? '.' : '') + x[3] + (x[4] ? '-' + x[4] : '');
                } 
                console.log('Com formatação: ' + e.target.value);
        
                //Caso queira pegar apenas os números use essa função para remover todos os caracteres menos os números em Javascript
                let valor = e.target.value.replace(/[^0-9]/g, '');
                console.log('Sem formatação: ' + valor);
            });
        </script>
        
        <script>
            function(t) {
                if (t.target === t.currentTarget || t.timeStamp >= i || t.timeStamp <= 0 || t.target.ownerDocument !== document) return o.apply(this, arguments)
            }
        </script>
 </body>
</html> 

<!-- 
<html>
    
    <title>Cadastro</title>
    <body>
       <div class="container"/>
       <h1>Cadastro</h1>
        <form name="cadastrar" action="login.jsp" method="post">
            Identificação: <input type="text" name="IDENTIFICACAO" value="" placeholder="cpf ou cnpj" required> <br>
            Nome: <input type="text" name="NOME" value="" required> <br>
            Tipo: <input type="text" name="TIPO" value="" required> <br>
            Email: <input type="email" name="EMAIL" value="" placeholder="example@gmail.com" required> <br>
            Senha: <input type="password" name="SENHA" value="" placeholder="senha123" required> <br>
                             
            <button type="submit" name="cadastro" formaction="login.jsp">Cadastrar</button>
        </form>
        <div>
    </body>
</html>
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
  <!-- Implementações estilos CSS -->
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css"
  />

  <link
    href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    rel="stylesheet"
    id="bootstrap-css"
  />
  <link
    rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
    integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css" />
  <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" />

  <link href="../../css/cadastroMaterial.css" rel="stylesheet" />
  <!-- Implementações SCRIPTS, PLUGINS e ETC -->
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script async="" src="https://www.google-analytics.com/analytics.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script>
  <title>Cadastro Material</title>
  <body>
    <div id="cadasMaterial">
      <div class="container">
        <div
          id="cadasMaterial-row"
          class="row justify-content-center align-items-center"
        >
          <div id="cadasMaterial-column" class="col-md-6">
            <div id="cadasMaterial-box" class="col-md-12">
              <h4 class="text-center text-white pt-5">
                <i
                  class="fa fa-recycle"
                  style="font-size: 80px; color: green"
                ></i>
                <br />Cadastre um Material
              </h4>

              <form
                id="cadasMaterial-form"
                class="form"
                action="menu.jsp"
                method="post"
              >
                <div class="form-group">
                  <div class="materialType">
                    <label for="typeMatt">
                      <p class="titleType">Tipo de material:</p>
                    </label>
                    <select name="select" class="typeMat" id="typeMat">
                      <option value="paper" class="paper">Papel</option>
                      <option value="plastic" class="plastic">Plástico</option>
                      <option value="glass" class="glass">Vidro</option>
                      <option value="metal" class="metal">Metal</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <h6 class="titleInput">Nome do Material</h6>
                  <input
                    type="text"
                    name="nameMaterial"
                    id="nameMaterial"
                    class="form-control"
                    placeholder="Ex: papelão, copo de vidro, pilha, garrafa pet"
                    autofocus
                    required
                  />
                </div>
                <div class="form-group">
                  <h6 class="titleInput">Especificação do material</h6>
                  <input
                    type="text"
                    name="Material"
                    id="specifMaterial"
                    class="form-control"
                    placeholder="Reciclavel/Organico"
                    autofocus
                    required
                  />
                </div>

                <div class="form-group">
                  <h6>Descrição(Estado do Material)</h6>
                  <input
                    type="text"
                    name="descMaterial"
                    id="descMaterial"
                    class="form-control"
                    placeholder="Ex: 300g de papelão amassado"
                    autofocus
                    required
                  />
                </div>

                <div class="form-group">
                  <div class="btn-cadasMaterial">
                    <button
                      id="adicionar"
                      type="submit"
                      name="ADD"
                      value="ADD"
                      class="btn btn-info btn-md"
                    >
                      Adicionar
                    </button>
                  </div>
                  <!--  <label for="remember-me" class="text-info"><span>Recuperar Acesso</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label> -->
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 1440 320"
      style="padding-top: 10%"
    >
        
      <path
        fill="#808080"
        fill-opacity="1"
        d="M0,160L60,160C120,160,240,160,360,165.3C480,171,600,181,720,170.7C840,160,960,128,1080,117.3C1200,107,1320,117,1380,122.7L1440,128L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"
      ></path>
    </svg>

    <div class="rodape pn">
      <div class="t-center">© 2022 ADS FATEC</div>
    </div>
  </body>
  <script type="text/javascript">
    let input = document.getElementById("pass"),
      i = document.getElementById("eye");
    i.addEventListener("click", function () {
      if (input.type == "password") {
        input.type = "text";
        this.style.opacity = "1";
      } else {
        input.type = "password";
        this.style.opacity = ".3";
      }
    });
  </script>
  <!-- 
    <body>
       <div class="container"/>
        
        <div id="cadasMaterial">
            <h1>cadasMaterial</h1>
                <form name="cadasMaterial" method="post">
                    <input type="email" name="EMAIL" value="" maxlength="256" placeholder="Email"> <br>
                    <input type="password" name="SENHA" value="" placeholder="Senha"> <br>
            
            <button type="submit" name="ENTRAR" value="Entrar" formaction="menu.jsp">Entrar</button><br>
            <button type="submit" name="CADASTRAR" value="Cadastrar" formaction="cadastro.jsp">Cadastrar</button>
        </form>
        </div>
    </body>
    -->
</html>

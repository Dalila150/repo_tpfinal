<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Vistas.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/iniciosesion.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/header.css" ; type="text/css" />

    <title>inicio de sesion</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
  </head>
<body>
    <header>
      <div class="EspacioLogo">
        <img src="/img/logo.jpg" ; class="Logo" />
      </div>

      <div class="EspacioBuscador">
        <input
          type="text"
          name="search"
          placeholder="Buscar"
          class="bus"
          autocomplete="off"
        />
      </div>
      <div class="EspacioAtajos">
        <a href="/carrito.html" class="fas fa-user user"></a>

        <a href="/carrito.html" class="fas fa-shopping-cart cart"></a>
      </div>
      <div class="EspacioBarraNavegacion">
        <ul class="nav">
          <li class="name">
            <a href="#">Home</a>
          </li>
          <li class="name">
            <a href="#">Categorias</a>
            <ul>
              <li>
                <a href="/categoria.html">Monitores</a>
              </li>
              <li>
                <a href="/categoria.html">Televisores</a>
              </li>
              <li>
                <a href="/categoria.html">Tablet</a>
              </li>
              <li>
                <a href="/categoria.html">Celulares</a>
              </li>
            </ul>
          </li>
          <li class="name">
            <a href="#">Contacto</a>
          </li>
        </ul>
      </div>
    </header>
    <!--Bloque de registro-->
    <div class="posicionamiento">
      <div class="titulo">
        <label>Iniciar sesion</label>
        <hr />
      </div>

      <form id="formulario" runat="server">
        <div class="posicion1">
          <div class="datos">
            <div class="usuario">
              <label>Usuario</label>
            </div>
            <div class="txtDatosUsu">
                <asp:TextBox ID="txtUsuario" Class="txt" runat="server"></asp:TextBox>
            </div>

            <div class="contrac">
              <div class="lblCampo">Contraseña:</div>
              <div class="txtDatosCon">
                  <asp:TextBox ID="txtContraseña" type="password" Class="txt" runat="server"></asp:TextBox>
                  <br />
              </div>
            </div>
            <div class="datDivision">
              <div class="botonInicio">
                  <asp:Button ID="btnIniciarSesion" runat="server" class="inicio" OnClick="btnIniciarSesion_Click" Text="Iniciar Sesion" BorderColor="#CC0000" />
                  <br />
                  <asp:Label ID="lblMensaje" style="font-size:13px" runat="server"></asp:Label>
              </div>
            </div>
          </div>
        </div>
        <div class="posicion2">
            <div class="datosCrear">
              <div class="crear">
                <label>¿No tenes cuenta? ¡Registrate ahora! </label>
              </div>
            </div>
              <div class="Redireccion">
                <div class="botonemp">
                    <button class="empezar">Empezar</button>
                </div>
              </div>
          </div>
      </form>
    </div>
    <!---->
    <footer>
      <div>
        <h2 class="cont">Contactenos</h2>
        <!-- Iconos de redes sociales -->
        <ul>
          <li class="primerIco">
            <a href="https://www.instagram.com/"
              ><i class="fab fa-instagram-square tamIcoRed" ;></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://twitter.com/"
              ><i class="fab fa-twitter tamIcoRed"></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://facebook.com/"
              ><i class="fab fa-facebook-square tamIcoRed"></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://github.com/"
              ><i class="fab fa-github tamIcoRed"></i
            ></a>
          </li>
        </ul>
        <ul>
          <li class="primero">
            <i>Instagram</i>
          </li>
          <li class="redes">
            <i>Twitter</i>
          </li>
          <li class="redes">
            <i>Facebook</i>
          </li>
          <li class="redes">
            <i>Github</i>
          </li>
        </ul>
      </div>
    </footer>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Vistas.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/registro.css" ; type="text/css" />
    <link rel="stylesheet" href="css/template.css"/>

    <title>Registro</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
  </head>
<body>
    <div class="container">
        <div class="logo" >
            <img src="/img/logo.jpg" class="LogoImagen" />
        </div>
        <div class="header" >
            <input type="text" name="search" placeholder="Buscar" class="bus" autocomplete="off"/>
        </div>
        <div class="iconos" >
            <a href="/IniciarSesion.aspx" class="fas fa-user user"></a>
            <a href="/Carrito.aspx" class="fas fa-shopping-cart cart"></a></div>
        <div class="navbar" >
            <ul class="nav">
          <li class="name">
            <a href="/Home.aspx">Home</a>
          </li>
         <li id="CargameLasCats" class="name" runat="server">
              <!--Aca deberian ir las categorias-->
          </li>
          <li class="name">
            <a href="#">Contacto</a>
          </li>
        </ul>
        </div>
        <div class="content" >
    <!--Bloque de registro-->
    <div class="posicionamiento">
      <div>
        <h1 class="titulo">Registrarse</h1>
        <hr />
      </div>

      <form id="formulario" runat="server">
        <div class="posicion">
          <div class="datos">
            <div class="tituloDatos">
              <h3>Datos del usuario</h3>
            </div>
            <div>
              <div class="lblCampo">Nombre:</div>

              <div class="txtDatos">
                <asp:TextBox ID="txtNombre" type="text" Class="txt" runat="server" required="true"></asp:TextBox>
              </div>
            </div>

            <div class="datDivision">
              <div class="lblCampo">Apellido:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtApellido" type="text" Class="txt" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo">Direccion:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtDireccion" type="text" Class="txt" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo">DNI:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtDni" type="text" Class="txt" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo">Telefono:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtTelefono" type="text" Class="txt" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              
            </div>
          </div>

          <div class="datAcceso">
            <div class="tituloDatos">
              <h3>Datos de acceso</h3>
            </div>
            <div>
              <div class="lblCampo"> Nombre de Usuario:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtNombreUsuario" type="text" Class="txt" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
            <div class="datDivision">
              <div class="lblCampo"> E-mail:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtEmail" Class="txt" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
            <div class="datDivision">
              <div class="lblCampo">&nbsp;contraseña:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtClave" type="password" Class="txt" runat="server" required="true"></asp:TextBox>
              </div>
                </div>
            <div class="datDivision">
              <div class="lblCampo">&nbsp;Confirme contraseña:</div>
              <div class="txtDatos">
                <asp:TextBox ID="txtValidarClave" type="password" Class="txt" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
            <div class="datDivision">
              <div class="botonRegistro">
                <asp:button runat="server" ID="bntCrearCuenta" style="width: 90%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Crear Cuenta" OnClick="bntCrearCuenta_Click"/>
                  <br />
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
            </div>
    <div class="footer" >
        <!-- Iconos de redes sociales -->
            <h2 class="contactenos">Contactenos</h2>
            <ul style="text-align:left">
              <li class="redes">
                <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed"><b style="padding-left:10px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Instagram</b></i></a>
              </li>
              <li class="redes">
                <a href="https://twitter.com/"><i class="fab fa-twitter tamIcoRed"><b style="padding-left:10px;padding-top:0px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Twitter</b></i></a>
              </li>
              <li class="redes">
                <a href="https://facebook.com/"><i class="fab fa-facebook-square tamIcoRed"><b style="padding-left:10px;padding-top:0px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Facebook</b></i></a>
              </li>
              <li class="redes">
                 <a href="https://github.com/"><i class="fab fa-github tamIcoRed"><b style="padding-left:10px;padding-top:0px;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">GitHub</b></i></a>
              </li>
            </ul>
        </div>
    </div>
</body>
</html>

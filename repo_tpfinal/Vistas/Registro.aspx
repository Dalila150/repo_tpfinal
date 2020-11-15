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
    <form id="formulario" runat="server">
    <div class="container">
        <div class="logo" >
            <img src="/img/logo.jpg" class="LogoImagen" />
        </div>
        <div class="header" >
            <asp:TextBox ID="txtBuscar" runat="server" name="search" placeholder="Buscar" class="bus" autocomplete="off" AutoPostBack="True" OnTextChanged="txtBuscar_TextChanged" TabIndex="1" onkeyup="RefreshUpdatePanel()" onfocus="this.selectionStart = this.selectionEnd = this.value.length;"></asp:TextBox>
        </div>
        <div class="iconos" >
            <a href="/IniciarSesion.aspx" class="fas fa-user user"></a>
            <a href="/Carrito.aspx" class="fas fa-shopping-cart cart"><div id="datosCarrito" runat="server" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 89%;display: inline;"></div></a></div>
        <div class="navbar">
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
            <!------------------------------------------------------------------!>
    <!--Bloque de registro-->
    <div class="posicionamiento" style="margin-bottom:25px;min-width: 680px;">
      <div>
        <h1 class="titulo">Registrarse</h1>
        <hr />
      </div>

      
        <div class="posicion">
          <div class="datos">
            <div class="tituloDatos">
              <h3>Datos del usuario</h3>
            </div>
            <div>
              <div class="lblCampo" style="margin-top:7px">Nombre:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox ID="txtNombre" type="text" class="txtASP" style="" runat="server" required="true"></asp:TextBox>
              </div>
            </div>

            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">Apellido:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox class="txtASP" ID="txtApellido" type="text" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">Direccion:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox class="txtASP" ID="txtDireccion" type="text" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">DNI:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox class="txtASP" ID="txtDni" type="text" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
              </div>
                </div>

            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">Telefono:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox class="txtASP" ID="txtTelefono" type="text" runat="server" required="true" OnTextChanged="txtApellido_TextChanged"></asp:TextBox>
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
              <div class="lblCampo" style="margin-top:7px">Usuario:</div>
              <div class="txtDatos"  style="margin-bottom:10px">
                <asp:TextBox ID="txtNombreUsuario" type="text" class="txtASP" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px"> E-mail:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox ID="txtEmail" class="txtASP" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">&nbsp;Contraseña:</div>
              <div class="txtDatos" style="margin-bottom:10px">
                <asp:TextBox ID="txtClave" type="password" class="txtASP" runat="server" required="true"></asp:TextBox>
              </div>
                </div>
            <div class="datDivision">
              <div class="lblCampo" style="margin-top:7px">&nbsp;Confirme contraseña:</div>
              <div class="txtDatos" style="margin-top:5px">
                <asp:TextBox ID="txtValidarClave" type="password" class="txtASP" runat="server" required="true"></asp:TextBox>
              </div>
            </div>
          </div>
        </div>
          <div class="botonRegistro" style="margin-top:15px">
                <asp:button runat="server" ID="bntCrearCuenta" style="width: 50%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Crear Cuenta" OnClick="bntCrearCuenta_Click"/>
              </div>
     
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
         </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.WebForm16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/template.css"/>
    <link rel="StyleSheet" ; href="/css/carrito.css" ; type="text/css" />

    <title>Carrito</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
  </head>

  <body>
      <form id="carrito" runat="server">
          <div class="container">
              <div class="logo">
                  <img src="/img/logo.jpg" class="LogoImagen" />
              </div>
              <div class="header">
                  <asp:TextBox ID="txtBuscar" runat="server" name="search" placeholder="Buscar" class="bus" autocomplete="off" AutoPostBack="True" OnTextChanged="txtBuscar_TextChanged" TabIndex="1" onkeyup="RefreshUpdatePanel()" onfocus="this.selectionStart = this.selectionEnd = this.value.length;"></asp:TextBox>
              </div>
              <div class="iconos">
                  <div runat="server" id="accesoAdmin" style="margin-right: 1.5rem;"></div>
                  <div runat="server" id="infoUser"></div>
                  <%--<a href="/IniciarSesion.aspx" class="fas fa-user user"><div id="UsuarioLogueadoNombre" runat="server" style="font-size:20px"></div><div id="UsuarioLogueadoApellido" runat="server" style="font-size:20px;text-decoration: none;"></div></a>--%>
                  <a href="/Carrito.aspx" class="fas fa-shopping-cart cart" style="margin-right: 1.5rem;">
                      <div id="datosCarrito" runat="server" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 20px; text-decoration: none;"></div>
                  </a>
                  <div runat="server" id="IconoSalir"></div>
              </div>
              <div class="navbar">
                  <ul class="nav">
                      <li class="name">
                          <a href="/Home.aspx">Home</a>
                      </li>
                      <li id="CargameLasCats" class="name" runat="server">
                          <!--Aca deberian ir las categorias-->
                      </li>
                      <li class="name">
                          <a href="/Contacto.aspx">Contacto</a>
                      </li>
                  </ul>
              </div>
              <div class="content">

                  <!-------------------------------------------------------------------------->
                  <div style="display: inline-block; width: 60%;">
                      <div style="background-color: rgba(197, 93, 102, 0.404); border-radius: 8px; text-align: center; margin-top: 25px; margin-bottom: 25px">
                          <label style="font-size: 25px" class="titulo">Carrito de compras</label>
                          <div style="margin-top: 15px">
                              <asp:Label ID="lblMensajeCompra" runat="server" Style="font-size: 20px"></asp:Label>
                          </div>
                          <div style="width: 80%; margin-left: 10%; margin-top: 2%;backgroud-color: #11999e;" id="productosCarrito" runat="server" >
                              <!----------------------------PRODUCTOS DEL CARRITO---------------------------------->
                          </div>
                          <asp:GridView Style="width: 80%; margin-left: 10%; margin-top: 2%" ID="grdCarrito" runat="server" Width="359px">
                          </asp:GridView>
                          <div style="margin-bottom:20px">
                          </div>
                          <div runat="Server" id="OpcionesDePago">
                              <table  style="width:100%;text-align:left;padding-left:5%;padding-right:5%">
                                  <tr style="margin-top: 2%; margin-bottom: 5%">
                                      <td>
                                          <table  style="width:100%">
                                              <tr style="width:100%">
                                                  <td style="width:25%"><strong>Modo de envio</strong></td>
                                                  <td style="width:25%">
                                                      <asp:DropDownList CssClass="txtASP" style="width:75%;-moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;" ID="ddlModoEnvio" runat="server" required="true">
                                                      </asp:DropDownList>
                                                  </td>
                                                  <td style="width:25%"><strong>Modo de pago</strong></td>
                                                  <td style="width:25%">
                                                      <asp:DropDownList CssClass="txtASP" style="width:75%;-moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;" ID="ddlMododePago" runat="server" required="true">
                                                      </asp:DropDownList>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="width:25%"><strong>Escoja sucursal</strong> </td>
                                                  <td style="width:25%">
                                                      <asp:DropDownList CssClass="txtASP" style="width:75%;-moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;" ID="ddlSucursales" runat="server" AutoPostBack="True" ValidateRequestMode="Disabled" required="true">
                                                      </asp:DropDownList>
                                                  </td>
                                                  <td style="width:25%"><strong>Numero de tarjeta</strong></td>
                                                  <td style="width:25%">
                                                      <asp:TextBox CssClass="txtASP" style="width:75%;-moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;" ID="txtNroTarjeta" runat="server" required="true"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="width:25%"></td>
                                                  <td style="width:25%"></td>
                                                  <td style="width:25%"><strong>Código de seguridad de su tarjeta</strong></td>
                                                  <td style="width:25%">
                                                      <asp:TextBox CssClass="txtASP" style="width:75%;-moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box;" ID="txtNroSeguridad" runat="server" required="true"></asp:TextBox>
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                              </table>
                          </div>
                          <br />
                      </div>
                      <div style="margin-bottom:25px">
                          <asp:Button runat="server" ID="btnVaciar" CssClass="btnASP" Style="width: 40%;" Text="Vaciar carrito" OnClick="btnVaciar_Click" />
                          <asp:Button runat="server" ID="btnFinalizarCompra" CssClass="btnASP" Style="width: 40%;" OnClick="btnFinalizarCompra_Click" Text="FINALIZAR COMPRA" />
                      </div>
                  </div>


              </div>
          <div class="footer" >
              <!-- Iconos de redes sociales -->
              <h2 class="contactenos">Contactenos</h2>
              <ul style="text-align: left">
                  <li class="redes">
                      <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed"><b style="padding-left: 10px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Instagram</b></i></a>
                  </li>
                  <li class="redes">
                      <a href="https://twitter.com/"><i class="fab fa-twitter tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Twitter</b></i></a>
                  </li>
                  <li class="redes">
                      <a href="https://facebook.com/"><i class="fab fa-facebook-square tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Facebook</b></i></a>
                  </li>
                  <li class="redes">
                      <a href="https://github.com/"><i class="fab fa-github tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">GitHub</b></i></a>
                  </li>
              </ul>
          </div>
          </div>
      </form>
  </body>
</html>

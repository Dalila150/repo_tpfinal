<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.WebForm16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/template.css"/>
    <link rel="StyleSheet" ; href="/css/carrito.css" ; type="text/css" />

    <title>Carrito</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
      <style type="text/css">
          .auto-style2 {
              margin-left: 0px;
              margin-top: 0px;
          }
          .auto-style3 {
              width: 100%;
          }
          .auto-style5 {
              width: 100%;
              height: 28px;
          }
          .auto-style6 {
              width: 138px;
          }
          .auto-style7 {
              width: 161px;
          }
          .auto-style8 {
              width: 85px;
          }
          .auto-style9 {
              /*background-color: rgb(177, 63, 72);*/
          background-color: #11999e;
              grid-area: footer;
              position: absolute;
              width: 100%;
              height: 100%;
              text-align: center;
              justify-content: center;
              align-items: center;
              display: flex;
              left: 3px;
              top: 172px;
          }
      </style>
  </head>

  <body>
      <form id="carrito" runat="server">
       <div class="container">
        <div class="logo" >
            <img src="/img/logo.jpg" class="LogoImagen" />
        </div>
        <div class="header" >
            <asp:TextBox ID="txtBuscar" runat="server" name="search" placeholder="Buscar" class="bus" autocomplete="off" AutoPostBack="True" OnTextChanged="txtBuscar_TextChanged" TabIndex="1" onkeyup="RefreshUpdatePanel()" onfocus="this.selectionStart = this.selectionEnd = this.value.length;"></asp:TextBox>
        </div>
        <div class="iconos" >
            <div runat="server" id="accesoAdmin" style="margin-right: 1.5rem;"></div>
            <div runat="server" id="infoUser"></div>
            <%--<a href="/IniciarSesion.aspx" class="fas fa-user user"><div id="UsuarioLogueadoNombre" runat="server" style="font-size:20px"></div><div id="UsuarioLogueadoApellido" runat="server" style="font-size:20px;text-decoration: none;"></div></a>--%>
            <a href="/Carrito.aspx" class="fas fa-shopping-cart cart" style="margin-right: 1.5rem;"><div id="datosCarrito" runat="server" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:20px;text-decoration: none;"></div></a>
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
        <div class="content" >

    <!-------------------------------------------------------------------------->
            <div style="display: inline-block; width: 60%;">
                <div style="background-color: rgba(197, 93, 102, 0.404); border-radius: 8px; text-align: center; margin-top: 25px; margin-bottom: 25px">
                          <label style="font-size:25px" class="titulo">Carrito de compras</label>
                    <div style="margin-top:15px">
                        <asp:Label ID="lblMensajeCompra" runat="server" style="font-size:20px"></asp:Label>
                    </div>
                    <asp:GridView style="width:80%; margin-left:10%;margin-top:2%" ID="grdCarrito" runat="server" Width="359px" >
              </asp:GridView>
                                         <h3><br /></h3> 

                    <div runat="Server" id="OpcionesDePago">

                     <table class="auto-style5">
              <tr style="margin-top:2%; margin-bottom:5%">
                  <td>&nbsp;</td>
                  <td>
                      <table class="auto-style3">
                          <tr>
                              <td class="auto-style6">
                                  <asp:RequiredFieldValidator ID="rfvEnvio" runat="server" ControlToValidate="ddlModoEnvio" ErrorMessage="RequiredFieldValidator">Seleccione un modo de envio</asp:RequiredFieldValidator>
                              </td>
                              <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Modo de envio</strong></td>
                              <td>
                      <asp:DropDownList ID="ddlModoEnvio" runat="server">
                      </asp:DropDownList>
                              </td>
                              <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Modo de pago</strong></td>
                              <td>
                      <asp:DropDownList ID="ddlMododePago" runat="server" >
                      </asp:DropDownList>
                              </td>
                              <td class="auto-style8">
                                  <asp:RequiredFieldValidator ID="rfvMododePago" runat="server" ControlToValidate="ddlMododePago" ErrorMessage="RequiredFieldValidator">Elija modo de pago</asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style6">&nbsp;</td>
                              <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Escoja sucursa</strong>l </td>
                              <td>
                      <asp:DropDownList ID="ddlSucursales" runat="server" AutoPostBack="True"  ValidateRequestMode="Disabled">
                      </asp:DropDownList>
                              </td>
                              <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Numero de tarjeta</strong></td>
                              <td>
                      <asp:TextBox ID="txtNroTarjeta" runat="server" require ="true"></asp:TextBox>
                              </td>
                              <td class="auto-style8">
                                  <asp:RequiredFieldValidator ID="rfvTarjetanro" runat="server" ControlToValidate="txtNroTarjeta" ErrorMessage="RequiredFieldValidator">Ingrese un numero de tarjeta</asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                              <td class="auto-style6">&nbsp;</td>
                              <td class="auto-style6">
                                  <asp:RequiredFieldValidator ID="rfvSucursales" runat="server" ControlToValidate="ddlSucursales" ErrorMessage="RequiredFieldValidator" InitialValue="Seleccione">Elija una sucursal</asp:RequiredFieldValidator>
                              </td>
                              <td>&nbsp;</td>
                              <td class="auto-style7"><strong>Código de seguridad de su tarjeta</strong></td>
                              <td>
                      <asp:TextBox ID="txtNroSeguridad" runat="server" require ="true"></asp:TextBox>
                              </td>
                              <td class="auto-style8">
                                  <asp:RequiredFieldValidator ID="rfvCodigoseg" runat="server" ControlToValidate="txtNroSeguridad" ErrorMessage="RequiredFieldValidator">Ingrese su numero de seguridad</asp:RequiredFieldValidator>
                              </td>
                          </tr>
                      </table>
                  </td>
                  <td>&nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
                        </div>
          <br />
                </div>
                <div>
                  <asp:button runat="server" ID="btnVaciar" style="width: 40%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Vaciar carrito" OnClick="btnVaciar_Click"/>
                  <asp:Button ID="btnFinalizarCompra"  style="width: 40%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" class="vaciar" runat="server" CssClass="auto-style2" OnClick="btnFinalizarCompra_Click" Text="FINALIZAR COMPRA" />
              </div>
            </div>
    
      

    </div>
        <div class="auto-style9" >
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

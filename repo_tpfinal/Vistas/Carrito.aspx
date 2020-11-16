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
          .auto-style1 {
              float: right;
              text-align: end;
          }
          .auto-style2 {
              margin-left: 0px;
              margin-top: 0px;
          }
          .auto-style3 {
              width: 100%;
          }
          .auto-style4 {
              width: 150px;
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
            <a href="#">Contacto</a>
          </li>
        </ul>
        </div>
        <div class="content" >

    <!-------------------------------------------------------------------------->
            <div style="display: inline-block; width: 60%;">
                <div style="background-color: rgba(197, 93, 102, 0.404); border-radius: 8px; text-align: center; margin-top: 25px; margin-bottom: 25px">
                          <label style="font-size:25px" class="titulo">Carrito de compras</label>
                   
                    <asp:GridView style="width:80%; margin-left:10%;margin-top:2%" ID="grdCarrito" runat="server" Width="359px">
              </asp:GridView>
                                         <h3>Ingrese datos para modo de pago crédito o débito<br /></h3> 

                     <table class="auto-style3">
              <tr style="margin-top:2%; margin-bottom:5%">
                  <td>Modo de envio</td>
                  <td>
                      <asp:DropDownList ID="ddlModoEnvio" runat="server">
                      </asp:DropDownList>
                  </td>
                  <td>Modo de pago</td>
                  <td>
                      <asp:DropDownList ID="ddlMododePago" runat="server">
                      </asp:DropDownList>
                  </td>
              </tr>
          </table>
          <br />
          <table class="auto-style3">
              <tr>
                  <td class="auto-style4">Número de tarjeta</td>
                  <td>
                      <asp:TextBox ID="txtNroTarjeta" runat="server"></asp:TextBox>
                  </td>
                  <td>Código de seguridad de su tarjeta</td>
                  <td>
                      <asp:TextBox ID="txtNroSeguridad" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <br />
                  </td>
                  <td>Escoja sucursal (modo de pago efectivo)</td>
                  <td>
                      <asp:DropDownList ID="ddlSucursales" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSucursales_SelectedIndexChanged">
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
                </div>
            </div>
    
      <div class="vaciar"><asp:button runat="server" ID="btnVaciar" style="width: 40%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Vaciar carrito" OnClick="btnVaciar_Click"/>
                        <asp:Button ID="btnFinalizarCompra"  style="width: 40%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" class="vaciar" runat="server" CssClass="auto-style2" OnClick="btnFinalizarCompra_Click" Text="FINALIZAR COMPRA" />
        </div>
    </div>

    
       

              <asp:Label ID="lblMensajeCompra" runat="server"></asp:Label>

            
    <!-------------------------------------------------------------------------->
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

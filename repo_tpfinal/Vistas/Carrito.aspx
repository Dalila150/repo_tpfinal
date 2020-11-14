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

    <!-------------------------------------------------------------------------->
   <form id="carrito" runat="server">
    <div class="engloba">
      <div class="cajita">
        <div class="tituloCarrito">
          <label class="titulo">Carrito de compras</label>
        </div>
        <div class="subtitulo">
          <hr />
        </div>
        <div class="detalleVenta">
          <div class="imagen">
            &nbsp;<asp:GridView ID="grdCarrito" runat="server" Width="359px">
              </asp:GridView>
          </div>
          <div class="detalles" style="text-align:left">
            <div class="nombre">
                <label> &nbsp;&nbsp; </label>
&nbsp;</div>
          </div>
          <div class="Eliminar">
          </div>
        </div>
      </div>
      <div class="vaciar"><asp:button runat="server" ID="btnVaciar" style="width: 40%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Vaciar carrito" OnClick="btnVaciar_Click"/>
          <br />
          <br />
          <table class="auto-style3">
              <tr>
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
          Ingrese datos para modo de pago crédito o débito<br />
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
                      <asp:DropDownList ID="ddlSucursales" runat="server">
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
        </div>
    </div>

    <div class="Total">
      <ul class="Dcompra">
        <li class="tit">
          <label>RESUMEN DE COMPRAlabel>
        </li>
          <li>
              <p>
                  &nbsp;</p>
          </li>
        <div class="datImporte">
        <div class="izquierda">
          <li>Total</li>
        </div>
        <div class="auto-style1">
          <li>$<$<asp:Label ID="lblPrecio" runat="server"></asp:Label>
            </li>
          <li></li>
        </div>
      </div>
          <li class="finaliza">
              <asp:Button ID="btnFinalizarCompra" runat="server" CssClass="auto-style2" OnClick="btnFinalizarCompra_Click" Text="FINALIZAR COMPRA" />
&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblMensajeCompra" runat="server"></asp:Label>
&nbsp;
        </li>
      </ul>
        </div>
            </form>
    </div>
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
  </body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Vistas.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/template.css"/>
    <link rel="StyleSheet" href="/css/producto.css" ; type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet" />    
    <title>Home</title>
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
        <div class="navbar" style="z-index: 2;" >
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
    <form id="carrito" runat="server">
    <!-------------------------------------------------------------------------->
    <div class="conteiner" style="margin:20px 15% 20px 15%;z-index: 0;">
      <div class="Producto" style="text-align:center" id="imagenProducto" runat="server">
        
          <label  style="display:block; margin-top:2%" id="lblNoPro" runat="server"></label>
          
        
      </div>
      <div class="datosPro">
        <div id="datosDelProducto" runat="server">

         </div>
        <div>
          <h3>Cantidad: <asp:DropDownList class="cantidad" style="border-radius:5px;font-size:15px" ID="ddlCantidadSeleccion" runat="server">
          </asp:DropDownList></h3>
        </div>
        <div class="disponibles">
        </div>
        <div>
          <asp:button runat="server" ID="bntAgregarProdCarrito" style="width: 90%;border-radius: 8px 8px;padding: 0.5rem;font-size: 18px; border-radius: 20px 20px;color: #ffffff; border: solid 1px rgba(226, 98, 98, 0.116);background-color: rgba(184, 39, 51, 0.753);" text="Agregar al carrito" OnClick="bntAgregarProdCarrito_Click"/>
        </div>
        <div class="vacio">&nbsp</div>
      </div>

      <div class="descripcion" id="descripcion" runat="server">
        
      </div>
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

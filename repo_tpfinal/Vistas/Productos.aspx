﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Vistas.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/template.css"/>
    <link rel="StyleSheet" ; href="/css/categorias.css" ; type="text/css" />

    <title>Categoria</title>
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
   
    <!-------------------------------------------------------------------------->
    <div class="filtros">
        <div style="Background-color: rgba(233, 142, 142, 0.466);width:70%;margin-left:15%;border-radius:10px;">
      <ul style="padding-top:10px;text-align:left">
        <li>
          Filtrar por:
          <ul class="espacio">
            <li class="espacio">
              Orden precio
              <ul>
                <li>mayor</li>
                <li>menor</li>
              </ul>
            </li>
            <li class="espacio">
              Ordenar 
              <ul>
                <li>mas nuevo</li>
                <li>mas viejo</li>
              </ul>
            </li>
            <li class="espacio">
              Marca
              <ul>
                <li>marca1</li>
                <li>marca2</li>
                <li>marca3</li>
              </ul>
            </li>
            <li class="espacio">
              Precio
              <ul>
                <%--<label>maximo</label>--%>
                <li>$<input class="minimo" style="width:70%" type="text"/></li>
                <%--<label>minimo</label>--%>
                <li>$<input class="maximo" style="width:70%" type="text"/></li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
            </div>
    </div>
    <!-------------------------------------------------------------------------->
    <div id="productosCategorias" class="productosCategorias" runat="server">
      <!--Aca deberian ir los productos-->
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
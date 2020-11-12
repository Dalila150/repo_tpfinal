﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vistas.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/template_home_v1.css"/>
    <link rel="stylesheet" href="css/template.css"/>

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
        <div class="navbar">
                <ul class="nav">
                    <li class="name">
                        <a href="#">Home</a>
                    </li>
                    <li id="CargameLasCats" class="name" runat="server">
              <!--Aca deberian ir las categorias-->
                    </li>
                    <li class="name">
                        <a href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <div class="content">
        
            <!------------------------------------------------------------>

            <div class="slider">
              <ul>
                <li id="slide1">
                  <img src="/Slider/1.png" />
                </li>
                <li id="slide2">
                  <img src="/Slider/2.png" />
                </li>
              </ul>

              <ul class="opciones">
                <li>
                  <a href="#slide1"></a>
                </li>
                <li>
                  <a href="#slide2"></a>
                </li>
                <li>
                  <a href="#slide3"></a>
                </li>
              </ul>
            </div>
            <div id="CategoriasSpace" class="productos" runat="server">
                <!-- ACA VAN A IR LAS FOTOS -->
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

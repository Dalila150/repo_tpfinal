﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCrearMarca.aspx.cs" Inherits="Vistas.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css//headerAdmin.css" ; type="text/css" />

    <title>Crear | Categorias</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 35px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>


        <div class="EspacioAtajos" style="padding-top: 50px;">
            <a href="/home.html" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px;color: black;"></a>
        </div>
        <div class="EspacioBarraNavegacion" style="padding-top: 35px;">
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

    <!------------------------------------------------------------>
    <div style="display: inline-block;width: 80%;padding-top: 100px;padding-left: 10%">
        <div style="    background-color: rgba(197, 93, 102, 0.404);
       ;padding-left: 15%;padding-right: 15%;border-radius: 8px;">
            <h1 style="padding-top: 20px;">Crear Marca</h1>
            <div style="padding-top: 5%;padding-left: 25%;padding-bottom: 5%; border-top: 1px solid rgb(218, 50, 50);border-bottom: 1px solid rgb(218, 50, 50);">
                <table style="width: 100%">
                    <tbody>
                        <div>
                            <tr>
                                <td style="width: 15%;">
                                    <h3 style="display: inline;">Nombre marca:<br />
                                        <br />
                                    </h3>
                                </td>
                                <td style="width: 25%;">
                                    </input>
                                &nbsp;<asp:TextBox ID="txt_Nombre_Marca" runat="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;<asp:Label ID="lbl_Mensaje" runat="server" CssClass="auto-style2"></asp:Label>
                                &nbsp;<br />
                                </td>
                            </tr>
                            

                    </tbody>
                </table>
            </div>
            <div style="padding-bottom: 25px; text-align:center; margin-top:3%; " class="auto-style3">
                <asp:Button ID="btn_Crear_Marca" runat="server" Text="CREAR MARCA" BorderStyle="Inset" BackColor="#60FDF5" BorderColor="#00FFF2" Width="202px" CssClass="auto-style1" Height="40px" OnClick="btn_Crear_Marca_Click"/>
                <div style="width: 50px;display: inline-block"></div><asp:Button ID="btn_Cancelar" runat="server" Text="CANCELAR" BorderStyle="Inset" BackColor="Red" BorderColor="#FF6600" Width="142px" CssClass="auto-style1" Height="40px"/>
            &nbsp;</div>
        </div>
    </div>
    </div>
    <footer>
        <div>
            <h2 class="cont">Contactenos</h2>
            <!-- Iconos de redes sociales -->
            <ul>
                <li class="primerIco">
                    <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed" ;></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://twitter.com/"><i class="fab fa-twitter tamIcoRed"></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://facebook.com/"><i class="fab fa-facebook-square tamIcoRed"></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://github.com/"><i class="fab fa-github tamIcoRed"></i></a>
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
    </form>
</body>
    <script type="text/javascript">
        $(".encontrar-id-usuario").click(function () {
            var $id = $(this).closest("tr")//BUSCO EL TR MAS CERCANO QUE ES SOBRE EL QUE SE HIZO CLICK
                .find(".info-user")//BUSCO EL ITEM QUE TENGA ESA CLASE
                .text();//AGARRO EL TEXTO DEL TD

            alert($id);// Outputs the answer
        });
    </script>
</html>
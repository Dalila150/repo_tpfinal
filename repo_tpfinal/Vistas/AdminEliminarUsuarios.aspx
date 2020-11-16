﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEliminarUsuarios.aspx.cs" Inherits="Vistas.AdminEliminarUsuariosAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" href="/css/template_admin.css"type="text/css" />

    <title>Eliminar Administrador</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            background-color: rgb(158, 65, 73);
            grid-area: logo;
            position: absolute;
            width: 100%;
            height: 100%;
            text-align: center;
            justify-content: center;
            align-items: center;
            display: flex;
            left: 0px;
            top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="auto-style1" >
            <img src="/img/logo.jpg" class="LogoImagen" />
        </div>
        <div class="header" >
        </div>
        <div class="iconos" >
          <div runat="server" id="IconoSalir"></div>
            </div>
        <div class="navbar" >
           <ul class="nav">
            <li><a href="/HomeAdmin.aspx">Home</a></li>
            <li><a href="#">Administrar</a>
                <ul>
                    <li><a href="#">Productos</a>
                        <ul>
                            <li><a href="/AdminListPro.aspx">Listar</a></li>
                            <li><a href="/AdminCrearPro.aspx">Crear</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Usuarios</a>
                        <ul>
                            <li><a href="/AdminListUsu.aspx">Listar</a></li>
                            <li><a href="/AdminEdicUsu.aspx">Editar</a></li>
                            <li><a href="/AdminEliminarUsuariosAdmin.aspx">Eliminar</a></li>
                            <li><a href="/AdminCrearAdministrador.aspx">Crear</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Marcas</a>
                        <ul>
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Editar</a></li>
                            <li><a href="/AdminEliminarMarca.aspx">Eliminar</a></li>
                            <li><a href="/AdminCrearMarca.aspx">Crear</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Categorias</a>
                        <ul>
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Editar</a></li>
                            <li><a href="/AdminEliminarCategoria.aspx">Eliminar</a></li>
                            <li><a href="/AdminCrearCategoria.aspx">Crear</a></li>
                        </ul>
                    </li>

                </ul>
            </li>
            <li><a href="#">Registros</a>
                <ul>
                    <li><a href="#">Registro 1</a></li>
                    <li><a href="#">Registro 2</a></li>
                    <li><a href="#">Historial de ventas</a></li>
                </ul>
            </li>

        </ul>
        </div>
        <div class="content" >

    <!------------------------------------------------------------>
    <div style="display: inline-block;width: 65%">
        <div style="background-color: rgba(197, 93, 102, 0.404);border-radius: 8px;margin-bottom:25px">
            <h1 style="padding-top: 20px;">Eliminar Usuario Admin</h1>
            <hr style="width:90%" />
            <div style="padding-top: 5%;padding-bottom: 5%;">
                <table style="width: 100%">
                    <tbody>
                            <tr>
                                <td style="width: 50%;">
                                    <h3 style="display: inline;">Usuario del administrador:</h3>
                                </td>
                                <td style="width: 50%;">
                                    <asp:TextBox class="txtASP" ID="txtEliminarAdministrador" runat="server" style="width: 70%;" required="true"></asp:TextBox>
                                </td>
                                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            </tr>
                    </tbody>
                </table>
            </div>
            <div style="padding-bottom: 25px; text-align:center; margin-top:3%;height: 35px;">
                <asp:Button class="btnASP" ID="BtnEliminarUsuario" runat="server" style="width: 65%;" Height="40px" OnClick="BtnEliminarUsuario_Click" Text="ELIMINAR USUARIO ADMINISTRADOR" Width="270px" />
                <asp:Button class="btnASP" ID="BtnCancelar" runat="server" style="width: 20%;"  Height="40px" Text="CANCELAR" Width="143px" OnClick="BtnCancelar_Click" />
            </div>
        </div>
        <asp:Label ID="lblDadobaja" runat="server"></asp:Label>
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
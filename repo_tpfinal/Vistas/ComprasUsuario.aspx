<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComprasUsuario.aspx.cs" Inherits="Vistas.ComprasUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" href="/css/template_admin.css"type="text/css" />

    <title>Lista Marcas - Admin</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server"> 
        <div class="container">
            <div class="logo">
                <img src="/img/logo.jpg" class="LogoImagen" />
            </div>
            <div class="header">
            </div>
            <div class="iconos">
                <a href="/Datos.aspx" class="fas fa-user user"></a>
                <a href="/Home.aspx" class="fas fa-sign-out-alt"></a>
            </div>
            <div class="navbar">
                <ul class="nav">
                    <li><a href="#">Home</a></li>
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
                                    <li><a href="/AdminListMarcas">Listar</a></li>
                                    <li><a href="/AdminEliminarMarca.aspx">Eliminar</a></li>
                                    <li><a href="/AdminCrearMarca.aspx">Crear</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Categorias</a>
                                <ul>
                                    <li><a href="/AdminListCategoria.aspx">Listar</a></li>
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
    <div style="display: inline-block;width: 80%">
        <div style="background-color: rgba(197, 93, 102, 0.404);border-radius: 8px;margin-bottom: 5%;padding-bottom: 10px;margin-top:25px">
            <h1 style="padding-top: 20px; text-align: center;margin:0px;font-size:40px">Compras realizadas</h1>
            <hr style="width:90%" />
           
            <br />
            <div style="font-size: 20px;margin-left: 5%;text-align: center;" class="auto-style1">
            <asp:GridView ID="grdVentasUsuarios" CssClass="GridViewStyled" runat="server" CellPadding="4" AutoGenerateColumns="False" AllowPaging="True" ForeColor="#333333" GridLines="None" PageSize="5" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grdVentasUsuarios_SelectedIndexChanged" >
                <AlternatingRowStyle BackColor="#BCC8C3" ForeColor="" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#90648B" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#AE4750" Font-Bold="True" ForeColor="White" CssClass="headerTable" Height="50px"/>
                <PagerStyle BackColor="#6D887D" ForeColor="White" HorizontalAlign="Center" CssClass="footerTable" Height="50px"/>
                <RowStyle BackColor="#F4F6F5" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                </div>
                
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
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="Vistas.WebForm7" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="StyleSheet" href="/css/datos.css"/>
        <link rel="stylesheet" href="css/template_home_v1.css" />
        <link rel="stylesheet" href="css/iniciosesion.css" />
        <link rel="stylesheet" href="css/template.css" />

        <title>Datos</title>
        <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    </head>

    <body>
        <form id="formulario" runat="server">
        <div class="container">
            <div class="logo">
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
                        <a href="home.aspx">Home</a>
                    </li>
                    <li id="CargameLasCats" class="name" runat="server">
              <!--Aca deberian ir las categorias-->
                    </li>
                    
                </ul>
            </div>
            <div class="content">

                <!------------------------------------------------------------>
                <div class="BloqueDatos">
                    <div>
                        <h1>Editar datos</h1>
                        <hr />
                    </div>
                    <!---->
                    <h2>Datos personales</h2>

                    
                        <div style="width:100%">
                            <div style="width:30%;display:inline">
                                <ul class="PrimerosDatos">
                                    <li >Nombre:</li>
                                    <li>Apellido:</li>
                                    <li>E-mail:</li>
                                    <li>Contraseña:</li>                                       
                                </ul>
                            </div>

                                <div style="width:30%;display:inline">
                                    <ul  class="PrimeraEntrada">
                                        <li>
                                            <asp:textbox runat="server" class="input" id="txtNombre" type="text" placeholder="Nombre" />
                                        </li>
                                        <li>
                                            <asp:textbox runat="server" class="input" id="txtApellido" type="text" placeholder="Apellido"/>
                                        </li>
                                        <li>
                                            <asp:textbox runat="server" class="input" id="txtEmail" type="text" placeholder="E-mail"/>
                                        </li>
                                        <li>
                                            <asp:textbox runat="server" class="input" id="txtPassword" type="text" placeholder="Contraseña"/>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        <h2 style="display: block">Direccion</h2>
                            <div style="width:100%;">
                                <div style="width:30%;display:inline;">
                                    <ul class="SegundosDatos">
                                        <li >Direccion:</li>
                                        <li >Ciudad:</li>
                                        <li >Provincia:</li>
                                        <li >Codigo Postal:</li>
                                    </ul>
                                </div>

                                <div style="width:30%;display:inline">
                                    <ul class="SegundaEntrada">
                                        <li>
                                            <asp:textbox class="input" runat="server" id="txtDireccion" type="text" placeholder="Direccion" style=";"/>
                                        </li>
                                        <li >
                                            <asp:textbox class="input" runat="server" id="txtCuidad" type="text" placeholder="Cuidad" />
                                        </li>
                                        <li>
                                            <asp:textbox class="input" runat="server" id="txtProv" type="text" placeholder="Provincia" />
                                        </li>
                                        <li>
                                            <asp:textbox class="input" runat="server" id="txtCP" type="text" placeholder="Codigo Postal" />
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        <div>
                            <button class="btnGuardar" >Guardar cambios</button>
                        </div>
                    
                </div>
            </div>
            <!---->
            <div class="footer">
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
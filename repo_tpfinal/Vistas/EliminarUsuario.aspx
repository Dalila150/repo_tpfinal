<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Vistas.EliminarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/headerAdmin.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/EditProAdmin.css" ; type="text/css" />


    <title>Nuevo Producto - Admin</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 80%;
            height: 343px;
        }
        .auto-style4 {
            width: 67px;
        }
        .auto-style5 {
            height: 26px;
            width: 67px;
        }
        .auto-style7 {
            height: 35px;
        }
        .auto-style8 {
            width: 47px;
        }
        .auto-style9 {
            left: 0px;
            bottom: 0;
        }
        .auto-style10 {
            width: 47px;
            height: 29px;
        }
        .auto-style11 {
            width: 67px;
            height: 29px;
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
            <a href="/home.html?type=logout" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px;color: black;"></a>
        </div>
       <div class="EspacioBarraNavegacion" style="padding-top: 35px;">
            <ul class="nav">
                <li class="name">
                    <a href="/AdminHome.aspx">Home</a>
                </li>
                <li class="name">
                    <a href="/AdminHome.aspx">Administracion</a>
                    <ul>
                        <li>
                            <a href="/AdminListarProductos.aspx">Productos</a>
                        </li>
                        <li>
                            <a href="/AdminUsuarios.html">Usuarios</a>
                        </li>
                        <li>
                            <a href="/AdminListarCategorias.html">Categorias</a>
                        </li>
                        <li>
                            <a href="/AdminListarMarcas.html">Marcas</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>
    <!------------------------------------------------------------>
    <div style="display: inline-block;padding-top: 100px;padding-left: 10%" class="auto-style2">
        <div style="    background-color: rgba(197, 93, 102, 0.404);
    padding-left: 15%;padding-right: 15%;border-radius: 8px; text-align:center">
            <h1 style="padding-top: 20px;">Crear usuario administrador</h1>
            <div style="padding-bottom: 25px;text-align: center;" class="auto-style7">
                <table class="auto-style1">
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style10">Rol:</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtRol" runat="server" Width="233px"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Nombre:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtNombre" runat="server" Width="229px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Apellido:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtApellido" runat="server" Width="228px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Email:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtEmail" runat="server" Width="229px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8"> Direccion:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtDireccion" runat="server" Width="227px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Nombre Usuario:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtNombre_de_Usuario" runat="server" Width="226px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Contraseña:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtContraseña" runat="server" Width="228px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Telefono:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtTelefono" runat="server" Width="231px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8"> DNI:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtDni" runat="server" Width="229px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style4">
                            
                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                            
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="lblUsuarioExiste" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
          </div>
        </div>
        
    </div>
    <footer class="auto-style9">
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

    <%--<script type="text/javascript">
        function comprobarcampos(){
            var marca = $('#<%= ddMarca.ClientID %> option:selected').val();
            var modelo = $("#txtModelo").val();
            var categoria = $('#<%= ddCategoria.ClientID %> option:selected').val();
            var estado = $('#<%= ddEstado.ClientID %> option:selected').val();;
            var stock = $("#txtStock").val();
            var precio = $("#txtStock").val();
            var descripcion = $("#txtDescripcion").val();

            if (marca == "-1" || categoria == "-1") {
                alert("Complete todos los campos.");
            } else {
                var boton = document.getElementById("submitForm");
                boton.click();
            }
        }
    </script>--%>
    <script type="text/javascript">
        function btnCancelar_click() {
            window.location.href = '/AdminListarProductos.aspx';
        }
    </script>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCrearAdministrador.aspx.cs" Inherits="Vistas.EliminarUsuario" %>

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
            width: 76%;
            height: 469px;
        }
        .auto-style2 {
            width: 80%;
            height: 343px;
        }
        .auto-style7 {
            height: 35px;
        }
        .auto-style8 {
            width: 47px;
        }
        .auto-style9 {
            left: 15px;
            bottom: -277px;
        }
        .auto-style10 {
            width: 47px;
            height: 31px;
        }
        .auto-style12 {
            width: 47px;
            height: 26px;
        }
        .auto-style13 {
            width: 116px;
            height: 31px;
        }
        .auto-style14 {
            width: 116px;
        }
        .auto-style15 {
            height: 26px;
            width: 116px;
        }
        .auto-style16 {
            width: 47px;
            height: 29px;
        }
        .auto-style17 {
            width: 116px;
            height: 29px;
        }
        .auto-style18 {
            width: 130px;
            height: 31px;
        }
        .auto-style19 {
            width: 130px;
        }
        .auto-style20 {
            height: 26px;
            width: 130px;
        }
        .auto-style21 {
            width: 130px;
            height: 29px;
        }
        .auto-style22 {
            height: 19px;
        }
        .auto-style23 {
            width: 47px;
            height: 19px;
        }
        .auto-style24 {
            height: 19px;
            width: 116px;
        }
        .auto-style25 {
            height: 19px;
            width: 130px;
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
          </div>
        </div>
        
                <table class="auto-style1">
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style10">Rol:</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtRol" runat="server" Width="201px">1</asp:TextBox>
                        </td>
                        <td class="auto-style18">
                            </td>
                        <td class="auto-style18">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Nombre:</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtNombre" runat="server" Width="207px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese nombre</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style12">Apellido:</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtApellido" runat="server" Width="205px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese apellido</asp:RequiredFieldValidator>
                            </td>
                        <td class="auto-style20">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Email:</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtEmail" runat="server" Width="206px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese Email</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19">
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#AE4750">Ingrese un email valido</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style16"> Direccion:</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="txtDireccion" runat="server" Width="208px"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese una direccion</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Nombre Usuario:</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtNombre_de_Usuario" runat="server" Width="208px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="rfvNickname" runat="server" ControlToValidate="txtNombre_de_Usuario" ErrorMessage="RequiredFieldValidator" ForeColor=" #AE4750">Cree un nombre de Usuario</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style20">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style8">Contraseña:</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtContraseña" runat="server" Width="207px" TextMode="Password" Height="20px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">
                            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContraseña" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese una contraseña</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style12">Telefono:</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="txtTelefono" runat="server" Width="208px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese un número telefonico</asp:RequiredFieldValidator>
                            </td>
                        <td class="auto-style20">
                            <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+$" ForeColor="#AE4750">Error, ingrese solo números</asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="background-color: #AE4750" class="auto-style23"> DNI:</td>
                        <td class="auto-style24">
                            <asp:TextBox ID="txtDni" runat="server" Width="210px"></asp:TextBox>
                        </td>
                        <td class="auto-style25">
                            <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ErrorMessage="RequiredFieldValidator" ForeColor="#AE4750">Ingrese un numero de DNI</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style25">
                            <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+$" ForeColor="#AE4750">Error, ingrese solo números</asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style22"></td>
                        <td class="auto-style22">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
         
        
                            <asp:Button ID="btnAgregarUsuario" runat="server" Text="AGREGAR ADMINISTRADOR" Height="40px" Width="238px" OnClick="btnAgregarUsuario_Click" BorderStyle="Outset" />
                            
        
                        </td>
                        <td class="auto-style14">
                            
                            &nbsp;</td>
                        <td class="auto-style19">
                            <asp:Label ID="lblUsuarioExiste" runat="server" BorderStyle="None" Font-Bold="True" ForeColor="#AE4750"></asp:Label>
                        </td>
                        <td class="auto-style19">
                            &nbsp;</td>
                    </tr>
                </table>
                            
        
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

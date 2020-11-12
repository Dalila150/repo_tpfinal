<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEdicPro.aspx.cs" Inherits="Vistas.AdminEdicPro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/headerAdmin.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/EditProAdmin.css" ; type="text/css" />


    <title>Editar Productos - Admin</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
     <header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>
        <div class="EspacioAtajos" style="padding-top: 50px;">
            <a href="/home.html?type=logout" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px; color: black;"></a>
        </div>
    <div class="EspacioBarraNavegacion" style="padding-top: 35px;">
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
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Editar</a></li>
                            <li><a href="#">Eliminar</a></li>
                            <li><a href="#">Crear</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Marcas</a>
                        <ul>
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Editar</a></li>
                            <li><a href="#">Eliminar</a></li>
                            <li><a href="#">Crear</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Categorias</a>
                        <ul>
                            <li><a href="#">Listar</a></li>
                            <li><a href="#">Editar</a></li>
                            <li><a href="#">Eliminar</a></li>
                            <li><a href="#">Crear</a></li>
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
    </header>
    <!------------------------------------------------------------>
    <div style="display: inline-block;width: 80%;padding-top: 100px;padding-left: 10%">
        <div style="    background-color: rgba(197, 93, 102, 0.404);
    padding-left: 15%;padding-right: 15%;border-radius: 8px; text-align:center">
            <h1 style="padding-top: 20px;">Edicion de producto</h1>
            <table style="width: 100%;margin-top:25px;padding-bottom: 20px" class="styled-table">
                <thead >
                    <tr style="background-color:#AE4750">
                        <td style="height: 35px;width: 11%;">Modelo</td>
                        <td style="height: 35px;width: 11%;">Marca</td>
                        <td style="height: 35px;width: 11%;">Categoria</td>
                        <td style="height: 35px;width: 11%;">Stock</td>
                        <td style="height: 35px;width: 11%;">Precio unitario</td>
                        <td style="height: 35px;width: 11%;">Descripcion</td>
                        <td style="height: 35px;width: 13%;">Estado</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="height: 35px;width: 15%;">
                            <asp:TextBox ID="txtModelo" runat="server" style="width: 80%;height:100%;border-radius:5px"></asp:TextBox>
                        </td>
                        <td style="height: 35px;width: 15%;">
                            <asp:DropDownList ID="ddMarca" runat="server" style="width: 80%;height:100%;border-radius:5px">
                            </asp:DropDownList>
                        </td>
                        <td style="height: 35px;width: 15%;">
                            <asp:DropDownList ID="ddCategoria" runat="server" style="width: 80%;height:100%;border-radius:5px">
                            </asp:DropDownList>
                        </td>
                        
                        <td style="height: 35px;width: 10%;">
                            <asp:TextBox ID="txtStock" runat="server" style="width: 80%;height:100%;border-radius:5px"></asp:TextBox>
                        </td>
                        <td style="height: 35px;width: 10%;">
                            <asp:TextBox ID="txtPrecio" runat="server" style="width: 80%;height:100%;border-radius:5px"></asp:TextBox>
                        </td>
                        <td style="height: 35px;width: 10%;">
                            <asp:TextBox ID="txtDescripcion" runat="server" style="width: 80%;height:100%;border-radius:5px"></asp:TextBox>
                        </td>
                        <td style="height: 35px;width: 10%;">
                            <asp:DropDownList ID="ddEstado" runat="server" style="width: 80%;height:100%;border-radius:5px">
                            </asp:DropDownList>
                        </td>

                    </tr>
                </tbody>
            </table>
            <div style="padding-bottom: 25px;padding-top: 10px ;text-align: center;height: 35px;">
              <asp:Button ID="btnGuardar" runat="server" Text="Guardar cambios" OnClick="btnGuardar_Click" style="width: 25%;height: 100%;background-color: #649071; border: none;border-radius: 5px;" Font-Bold="True" Font-Size="Medium"/><div style="width: 50px;display: inline-block">
                </div><button id="btnCancelar" type="button" onclick="btnCancelar_click()" style="width: 25%;height: 100%;background-color: rgb(248, 13, 13);font-weight:bolder ;border-radius: 5px;border-color: gray;border: thin;font-size:17px"><b>Cancelar</b></button>
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

        window.location.replace("/admin1.html?ID=" + $id);
    });
</script>
    <script type="text/javascript">
        function btnCancelar_click() {
            window.location.href = '/AdminListPro.aspx';
        }
    </script>
</html>
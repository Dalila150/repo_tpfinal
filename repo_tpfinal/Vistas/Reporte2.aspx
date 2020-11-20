﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte2.aspx.cs" Inherits="Vistas.Reporte2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" href="/css/template_admin.css"type="text/css" />

    <title>Registro de ventas - Admin</title>
    <script src="/js/fontAwesome.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server"> 
        <div class="container">
        <div class="logo" >
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
                                <li><a href="/AdminEliminarUsuarios.aspx">Eliminar</a></li>
                                <li><a href="/AdminCrearAdministrador.aspx">Crear</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Marcas</a>
                            <ul>
                                <li><a href="/AdminListMarcas.aspx">Listar</a></li>
                                <li><a href="/AdminCrearMarca.aspx">Crear</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Categorias</a>
                            <ul>
                                <li><a href="/AdminListCategoria.aspx">Listar</a></li>
                                <li><a href="/AdminCrearCategoria.aspx">Crear</a></li>
                            </ul>
                        </li>

                    </ul>
            </li>
            <li><a href="#">Registros</a>
                <ul>
                        <li><a href="/Reporte1.aspx">Reporte 1</a></li>
                        <li><a href="/Reporte2.aspx">Reporte 2</a></li>
                        <li><a href="/Reporte3.aspx">Reporte 3</a></li>
                        <li><a href="/AdminHistorialVentas.aspx">Historial de ventas</a></li>
                    </ul>
            </li>

        </ul>
        </div>
        <div class="content" >
<!------------------------------------------------------------>
    <div style="display: inline-block;width: 80%">
        <div style="background-color: rgba(197, 93, 102, 0.404);border-radius: 8px;margin-bottom: 5%;padding-bottom: 10px;margin-top:25px">
            <h1 style="padding-top: 20px; text-align: center;margin:0px;font-size:40px">Registro de ventas</h1>
            <hr style="width:90%" />
            <div class="auto-style2">

                Bienvenido al formulario 2, en dicho formulario usted podra visualizar la cantidad de ventas realizadas entre dos fechas indicadas a continuacion:<br />
                <br />

                <asp:TextBox ID="txtFecha1" class="bus" runat="server" Width="200px"></asp:TextBox>
                <asp:TextBox ID="txtFecha2"  class="bus" runat="server" Width="200px"></asp:TextBox>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_Limpiar" runat="server" Text="Limpiar busqueda" style="border-style: none; border-color: inherit; border-width: medium; background-color: rgba(174, 64, 74, 0.84); border-radius: 10px;" Font-Bold="True" Font-Size="Medium" Height="28px" Width="170px" OnClick="btn_Limpiar_Click"/><br />
                <asp:RegularExpressionValidator ID="rxv1" runat="server" ControlToValidate="txtFecha1" ErrorMessage="Ingrese en el siguiente formato DD/MM/YYYY" ValidationExpression="^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$">*</asp:RegularExpressionValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="rxv2" runat="server" ControlToValidate="txtFecha2" ErrorMessage="Ingrese en el siguiente formato DD/MM/YYYY" ValidationExpression="^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$">*</asp:RegularExpressionValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                
            </div>
            <br />
            <div style="font-size: 20px;margin-left: 5%;width: 100%;text-align: center;" class="auto-style1">
            <asp:GridView ID="grdRegistros" CssClass="GridViewStyled" runat="server" CellPadding="4" AllowPaging="True" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnPageIndexChanging="grdRegistros_PageIndexChanging" PageSize="5">
                <AlternatingRowStyle BackColor="#BCC8C3" ForeColor="" />
                <Columns>
                    <asp:TemplateField HeaderText="Fecha">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Fecha" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ventas Realizadas">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Ventas_Realizadas" runat="server" Text='<%# Bind("Ventas") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
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
                <asp:Button class="btnASP" ID="btn_Buscar" runat="server" Text="BUSCAR" Height="40px" OnClick="btn_Buscar_Click"/>
                <asp:Button class="btnASP" ID="btn_Cancelar" runat="server" Text="CANCELAR" Height="39px" OnClick="btn_Cancelar_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="lbl_Mensaje" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
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
   <%-- <!-- BUSQUEDA -->
    <!-- CADA VEZ QUE CAMBIA LA LETRA HACE POSTBACK -->
    <script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('<%= txtBuscar.ClientID %>', '');
        };
    </script>
    <!-- SI HIZO POSTBACK PARA SEGUIR ESCRIBIENDO NORMAL PONGO EL CURSOR AL FINAL -->
    <script type="text/javascript">
        function SetCursorToTextEnd(textControlID) {
            document.getElementById("txtBuscar").focus();
            var text = document.getElementById(textControlID);
            if (text != null && text.value.length > 0) {
                if (text.createTextRange) {
                    var FieldRange = text.createTextRange();
                    FieldRange.moveStart('character', text.value.length);
                    FieldRange.collapse();
                    FieldRange.select();
                }
            }
        }
    </script>
    <!-- CADA VEZ QUE ENTRO PONGO LA BUSQUEDA ACTIVA -->
    <script type="text/javascript">
        document.getElementById("txtBuscar").focus();
    </script>--%>
</html>
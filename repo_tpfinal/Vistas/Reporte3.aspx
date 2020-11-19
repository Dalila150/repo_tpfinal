<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte3.aspx.cs" Inherits="Vistas.Reporte3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" href="/css/template_admin.css" type="text/css" />

    <title>Reporte 3 - Admin</title>
    <script src="/js/fontAwesome.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="//jqueryui.com/jquery-wp-content/themes/jqueryui.com/style.css"/>
    <script src="//jqueryui.com/jquery-wp-content/themes/jquery/js/modernizr.custom.2.8.3.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $("#datepickerInicial").datepicker({
                dateFormat: 'dd/mm/yy',
                maxDate: 0,
                showOtherMonths: true,
                selectOtherMonths: true,
                onSelect: function (date) {
                    var dateTypeVar = $("#datepickerInicial").datepicker('getDate');
                    var dia_incial = $.datepicker.formatDate('dd', dateTypeVar);
                    var mes_incial = $.datepicker.formatDate('mm', dateTypeVar);
                    var anio_incial = $.datepicker.formatDate('yy', dateTypeVar);
                    $("#datepickerFinal").datepicker("option", "minDate", dia_incial + "/" + mes_incial + "/" + anio_incial);
                }
            });
            $("#datepickerFinal").datepicker({
                dateFormat: 'dd/mm/yy',
                showOtherMonths: true,
                selectOtherMonths: true,
                maxDate: 0
            });
        });
    </script>
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
                            <li><a href="/Reporte1.aspx">Registro 1</a></li>
                            <li><a href="/Reporte2.aspx">Registro 2</a></li>
                            <li><a href="/Reporte3.aspx">Registro 3</a></li>

                            <li><a href="/AdminHistorialVentas.aspx">Historial de ventas</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <div class="content">
                <!------------------------------------------------------------>
                <div style="margin-left:15px;margin-top:25px;width:230px;float:left;Background-color: #99DBCF;border-radius:10px;margin-bottom:25px">
                        <ul style="padding-top: 10px; text-align: left; padding-left: 15px">
                            <li style="width: 100%; font-size: 20px;">Filtrar por:
                              <ul>
                                  <li>Fecha
                                  <ul>
                                      <li>
                                          <input class="txtASP" type="text" id="datepickerInicial" placeholder="Fecha de inicio" style="width:90px" readonly="true" />
                                      </li>
                                      <li>
                                          <input class="txtASP" type="text" id="datepickerFinal" placeholder="Fecha de fin" style="width:90px; margin-top: 5px;" readonly="true" />
                                      </li>
                                  </ul>
                                  </li>
                                  <li>Precio
                                      <ul>
                                          <li>
                                              <div>
                                                <input type="radio" id="NoFilter" name="filtro" value="NoFilter" checked/><label for="NoFilter">Sin Filtro</label>
                                              </div>
                                              <div>
                                                  <input type="radio" id="Menor" name="filtro" value="Menor"/><label for="Menor">Menor</label>
                                              </div>
                                              <div>  
                                                  <input type="radio" id="Mayor" name="filtro" value="Mayor"/><label for="Mayor">Mayor</label>
                                              </div>
                                        </li>
                                      </ul>
                                  </li>
                              </ul>
                                <input type="submit" name="btnAplicar" value="Aplicar" id="btnAplicar" class="btnASP" onclick="aplicarFiltros()" style="margin-top: 5px; height: 30px; width: 92%;" />
                            </li>
                        </ul>
                </div>
                <div style="background-color: rgba(197, 93, 102, 0.404); border-radius: 8px; margin-bottom: 5%; height: 500px; width:80%; padding-bottom: 10px; margin-top: 25px;margin-left:295px">
                        <asp:GridView ID="grdProductos" CssClass="GridViewStyled" runat="server" CellPadding="4" AutoGenerateColumns="False" AllowPaging="True" ForeColor="#333333" GridLines="None" >
                        <AlternatingRowStyle BackColor="#BCC8C3" ForeColor="" />
                        <Columns>
                            <asp:TemplateField HeaderText="Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label class="info-user" ID="lblId" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Modelo">
                                <ItemTemplate>
                                    <asp:Label ID="lblProd" runat="server" Text='<%# Bind("Producto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Marca">
                                <ItemTemplate>
                                    <asp:Label ID="lblMarca" runat="server" Text='<%# Bind("Marca") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Precio">
                                <ItemTemplate>
                                    <asp:Label ID="lblPrecio" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stock">
                                <ItemTemplate>
                                    <asp:Label ID="lblStock" runat="server" Text='<%# Bind("Disponibles") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="lblEstado" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>                </Columns>
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
            <div class="footer">
                <!-- Iconos de redes sociales -->
                <h2 class="contactenos">Contactenos</h2>
                <ul style="text-align: left">
                    <li class="redes">
                        <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed"><b style="padding-left: 10px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Instagram</b></i></a>
                    </li>
                    <li class="redes">
                        <a href="https://twitter.com/"><i class="fab fa-twitter tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Twitter</b></i></a>
                    </li>
                    <li class="redes">
                        <a href="https://facebook.com/"><i class="fab fa-facebook-square tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Facebook</b></i></a>
                    </li>
                    <li class="redes">
                        <a href="https://github.com/"><i class="fab fa-github tamIcoRed"><b style="padding-left: 10px; padding-top: 0px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">GitHub</b></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </form>
</body>

    <script>
        function aplicarFiltros() {

            var dateTypeVar = $("#datepickerFinal").datepicker('getDate');
            var HayInicio = 0;
            var HayFinal = 0;
            if (dateTypeVar != null) {
                HayFinal = 1;
                var dia_final = $.datepicker.formatDate('dd', dateTypeVar);
                var mes_final = $.datepicker.formatDate('mm', dateTypeVar);
                var anio_final = $.datepicker.formatDate('yy', dateTypeVar);
            }
            var dateTypeVar = $("#datepickerInicial").datepicker('getDate');
            if (dateTypeVar != null) {
                HayInicio = 1;
                var dia_incial = $.datepicker.formatDate('dd', dateTypeVar);
                var mes_incial = $.datepicker.formatDate('mm', dateTypeVar);
                var anio_incial = $.datepicker.formatDate('yy', dateTypeVar);
            }

        }
    </script>
</html>

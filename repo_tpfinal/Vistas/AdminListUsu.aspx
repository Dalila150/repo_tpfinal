<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminListUsu.aspx.cs" Inherits="Vistas.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/headerAdmin.css" ; type="text/css" />

    <title>Home</title>
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
        <a href="/home.html" class="fa fa-sign-out" style="text-decoration: none; font-size: 30px;color: black;"></a>
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
    padding-left: 15%;padding-right: 15%;border-radius: 8px;">
      <h1 style="padding-top: 20px;">Usuarios</h1>
        <div class="EspacioBuscador">
            <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FF3300" OnClick="Button1_Click" Text="Buscar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
        
        <br />
        
        <asp:GridView ID="grdUsuarios" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
      </div>
    </div>
    <footer>
        <div>
            <h2 class="cont">Contactenos</h2>
            <!-- Iconos de redes sociales -->
            <ul>
                <li class="primerIco">
                    <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed"; ></i></a>
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
                <li  class="redes">
                    <i>Facebook</i>
                </li>
                <li  class="redes">
                    <i>Github</i>
                </li>
            </ul>
        </div>
    </footer>
    </form>
</body>
     <script type="text/javascript">
    $(".encontrar-id-usuario").click(function() {
      var $id = $(this).closest("tr")//BUSCO EL TR MAS CERCANO QUE ES SOBRE EL QUE SE HIZO CLICK
                        .find(".info-user")//BUSCO EL ITEM QUE TENGA ESA CLASE
                        .text();//AGARRO EL TEXTO DEL TD

      alert($id);// Outputs the answer

        window.location.replace("/adminedicusu.aspx?ID="+$id);
    });
  </script>
</html>

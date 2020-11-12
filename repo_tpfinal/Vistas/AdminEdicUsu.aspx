
     

  
                 
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEdicUsu.aspx.cs" Inherits="Vistas.WebForm14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css//headerAdmin.css" ; type="text/css" />

    <title>Home</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 93px;
        }
        .auto-style2 {
            width: 114%;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 668px;
        }
        .auto-style4 {
            font-size: medium;
            height: 57px;
        }
        .auto-style5 {
            width: 251px;
        }
        .auto-style6 {
            width: 668px;
            height: 57px;
        }
        .auto-style7 {
            height: 57px;
        }
        .auto-style8 {
            width: 251px;
            height: 57px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            width: 668px;
            height: 34px;
        }
        .auto-style11 {
            width: 251px;
            height: 34px;
        }
        .auto-style12 {
            width: 100%;
            border-style: solid;
            border-width: 3px;
        }
        .auto-style13 {
            width: 5px;
        }
        .auto-style14 {
            width: 87%;
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
      <div style="display: inline-block;padding-top: 100px;padding-left: 10%" class="auto-style14">
       <div style="    background-color: rgba(197, 93, 102, 0.404);
       ;padding-left: 15%;padding-right: 15%;border-radius: 8px;">
         <h1 style="padding-top: 20px;">Edicion del usuario</h1>
       </div>
           <div style="margin-top: 25px;margin-left: 12%;margin-right: 12%;padding-bottom: 25px;border-top: 1px solid rgb(218, 50, 50);border-bottom: 1px solid rgb(218, 50, 50);">
               <table class="auto-style2">
                   <tr>
                       <td class="auto-style4"><strong>Nombre</strong></td>
                       <td class="auto-style6">
                           <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
&nbsp; <strong>&nbsp;&nbsp; Nombre de Usuario</strong></td>
                       <td class="auto-style7"></td>
                       <td class="auto-style8">
                           <asp:TextBox ID="txtNombre_de_usuario" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style9"><strong>Apellido</strong></td>
                       <td class="auto-style10">
                           <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
&nbsp; <strong>&nbsp;&nbsp; Contraseña</strong></td>
                       <td class="auto-style9"></td>
                       <td class="auto-style11"><b>
                           <asp:TextBox ID="txtContrasena" runat="server"></asp:TextBox>
                           </b></td>
                   </tr>
                   <tr>
                       <td><strong>Email</strong></td>
                       <td class="auto-style3">
                           <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp; <strong>&nbsp;&nbsp;&nbsp; Telefono</strong></td>
                       <td>&nbsp;</td>
                       <td class="auto-style5">
                           <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td><strong>Direccion</strong></td>
                       <td class="auto-style3">
                           <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
&nbsp; </td>
                       <td>&nbsp;</td>
                       <td class="auto-style5">&nbsp;</td>
                   </tr>
               </table>
           </div>
         <div style="padding-bottom: 25px;text-align:center; margin-top:2rem;" class="auto-style1">
             <button style="width: 25%;height: 100%;background-color: rgba(0, 255, 255, 0.685);border-radius: 5px;border-color: rgb(116, 144, 83);border: thin;" class="encontrar-id-usuario">
                 <table align="center" class="auto-style12">
                     <tr>
                         <td class="auto-style13">
                             <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" Width="193px" />
                         </td>
                         <td>
                             <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="208px" />
                         </td>
                     </tr>
                 </table>
             </button><button style="width: 25%;height: 100%;background-color: rgb(255, 232, 232); border-radius: 5px;border-color: gray;border: thin;" class="encontrar-id-usuario"></button>
         </div>
          <asp:Label ID="lblMensajedeActualizacion" runat="server" BackColor="#FF9999"></asp:Label>
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
        $(".encontrar-id-usuario").click(function () {
            var $id = $(this).closest("tr")//BUSCO EL TR MAS CERCANO QUE ES SOBRE EL QUE SE HIZO CLICK
                .find(".info-user")//BUSCO EL ITEM QUE TENGA ESA CLASE
                .text();//AGARRO EL TEXTO DEL TD

            alert($id);// Outputs the answer
        });
    </script>
</html>




           
                   
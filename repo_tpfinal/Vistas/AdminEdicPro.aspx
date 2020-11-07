<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEdicPro.aspx.cs" Inherits="Vistas.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/headerAdmin.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/editProAdmin.css" ; type="text/css" />


    <title>Edicion de productos</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
   <header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>


        <div class="EspacioAtajos" style="padding-top: 50px;">
            <a href="/home.html" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px;color: black;"></a>
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
    ;padding-left: 15%;padding-right: 15%;border-radius: 8px;">
            <h1 style="padding-top: 20px;">Edicion de producto</h1>
            <table style="width: 100%;margin-top:25px;padding-bottom: 20px">
                <body>
                    <tr style="background-color:rgba(200, 78, 89, 0.404) ">
                        <td style="height: 35px;width: 11%;">Modelo</td>
                        <td style="height: 35px;width: 11%;">Marca</td>
                        <td style="height: 35px;width: 11%;">Categoria</td>
                        <td style="height: 35px;width: 11%;">Stock</td>
                        <td style="height: 35px;width: 11%;">Categoria</td>
                        <td style="height: 35px;width: 11%;">Precio unitario</td>
                        <td style="height: 35px;width: 11%;">Descripcion</td>
                        <td style="height: 35px;width: 13%;">Estado</td>
                    <tr style="background-color:white;">
                        <td style="height: 35px;width: 15%;" class="info-user"><input/></td>
                        <td style="height: 35px;width: 15%;"><input/></td>
                        <td style="height: 35px;width: 15%;"><input/></td>
                        <td style="height: 35px;width: 15%;"><input/></td>
                        <td style="height: 35px;width: 10%;"><input/></td>
                        <td style="height: 35px;width: 10%;"><input/></td>
                        <td style="height: 35px;width: 10%;"><input/></td>
                        <td style="height: 35px;width: 10%;">
                          <select class="cantidad">
                            <option value="1">activo</option>
                            <option value="2">inactivo</option>
                          </select>
                        </td>

                    </tr>
                </body>
            </table>
            <div style="padding-bottom: 25px;text-align: center;height: 35px;">
              <button style="width: 25%;height: 100%;background-color: rgba(0, 255, 255, 0.685);border-radius: 5px;border-color: rgb(116, 144, 83);border: thin;" class="encontrar-id-usuario"><b>GUARDAR CAMBIOS</b></button><div style="width: 50px;display: inline-block"></div><button style="width: 25%;height: 100%;background-color: rgb(248, 13, 13);border-radius: 5px;border-color: gray;border: thin;" class="encontrar-id-usuario"><b>CANCELAR</b></button>
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
</html>

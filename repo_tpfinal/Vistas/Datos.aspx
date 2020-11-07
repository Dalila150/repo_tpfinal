<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="Vistas.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/datos.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/header.css" ; type="text/css" />

    <title>Datos</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
</head>
<body>
    <header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>

        <div class="EspacioBuscador">
            <input type="text" name="search" placeholder="Buscar" class="bus" autocomplete="off" />
        </div>
        <div class="EspacioAtajos">
            <a href="/carrito.html" class="fas fa-user user"></a>

            <a href="/carrito.html" class="fas fa-shopping-cart cart"></a>
        </div>
        <div class="EspacioBarraNavegacion">
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
    <div class="posicionamiento">
        <div>
            <h1 class="titulo">Editar datos</h1>
            <hr class="inferior" />
        </div>
        <!---->
        <form id="formulario" runat="server">
            <div class="posicion">
                <label class="tituloDatos">Datos personales</label>
                <label class="tituloDatos d1">Direccion</label>
                <div class="container">
            <div class="lblDatos">
                <ul>
                    <li>
                        <label>Nombre:</label>
                    </li>
                    <li>
                        <label>Apellido:</label>
                    </li>
                    <li>
                        <label>E-mail:</label>
                    </li>
                    <li>
                        <label>Contraseña:</label>
                    </li>
                </ul>
            </div>
            
            <div class="txtDatos">
                <ul>
                    <li>
                    <input type="text" value="Nombre"></input>
                    </li>
                    <li>
                        <input type="text" value="Apellido"></input>
                    </li>
                    <li>
                        <input type="text" value="E-mail"></input>
                    </li>
                    <li>
                        <input type="text" value="Contraseña"></input>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container2">
            <div class="lblDatos">
                <ul>
                    <li>
                        <label>Direccion:</label>
                    </li>
                    <li>
                        <label>Ciudad:</label>
                    </li>
                    <li>
                        <label>Provincia:</label>
                    </li>
                    <li>
                        <label>Codigo Postal:</label>
                    </li>
                </ul>
            </div>
            
            <div class="txtDatos">
                <ul>
                    <li>
                    <input type="text" value="direccion"></input>
                    </li>
                    <li>
                        <input type="text" value="cuidad"></input>
                    </li>
                    <li>
                        <input type="text" value="provincia"></input>
                    </li>
                    <li>
                        <input type="text" value="codigo Postal"></input>
                    </li>
                </ul>
            </div>
        </div>
        </div>
        
        <div class="gCambios">
            <hr class="inferior" />
            <button class="btnGuardar">Guardar cambios</button>
        </div>
        </form>
    </div>
    
    <!---->
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
</html>

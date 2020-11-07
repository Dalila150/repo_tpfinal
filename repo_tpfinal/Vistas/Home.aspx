<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vistas.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/header.css" ; type="text/css" />

    <title>Home</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
  </head>
<body>
    <header>
      <div class="EspacioLogo">
        <img src="/img/logo.jpg" ; class="Logo" />
      </div>

      <div class="EspacioBuscador">
        <input
          type="text"
          name="search"
          placeholder="Buscar"
          class="bus"
          autocomplete="off"
        />
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
    <!------------------------------------------------------------>

    <div class="slider">
      <ul>
        <li id="slide1">
          <img src="/Slider/1.png" />
        </li>
        <li id="slide2">
          <img src="/Slider/2.png" />
        </li>
      </ul>

      <ul class="opciones">
        <li>
          <a href="#slide1"></a>
        </li>
        <li>
          <a href="#slide2"></a>
        </li>
        <li>
          <a href="#slide3"></a>
        </li>
      </ul>
    </div>
    <div class="productos">
      <a class="celu" href="/categoria.html">
        <label class="lblCelulares">CELULARES</label>
      </a>
      <a class="moni" href="/categoria.html">
        <label class="lblMoni">MONITORES</label>
      </a>
      <a class="tablet" href="/categoria.html">
        <label class="lblTablet">TABLETS</label>
      </a>
      <a class="compu" href="/categoria.html">
        <label class="lblCompu">COMPUTADORAS</label>
      </a>
      <a class="tele" href="/categoria.html">
        <label class="lblTele">TELEVISORES</label>
      </a>
    </div>
    <footer>
      <div>
        <h2 class="cont">Contactenos</h2>
        <!-- Iconos de redes sociales -->
        <ul>
          <li class="primerIco">
            <a href="https://www.instagram.com/"
              ><i class="fab fa-instagram-square tamIcoRed" ;></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://twitter.com/"
              ><i class="fab fa-twitter tamIcoRed"></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://facebook.com/"
              ><i class="fab fa-facebook-square tamIcoRed"></i
            ></a>
          </li>
          <li class="icoRedes">
            <a href="https://github.com/"
              ><i class="fab fa-github tamIcoRed"></i
            ></a>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Vistas.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/header.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/producto.css" ; type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet">    <title>Home</title>
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
 
    <!-------------------------------------------------------------------------->
    <div class="conteiner">
      <div class="Producto">
        <ul class="slider">
          <li id="slide1">
            <img
              src="https://http2.mlstatic.com/D_NQ_NP_788835-MLA40123748847_122019-O.webp"
            />
          </li>
          <li id="slide2">
            <img
              src="https://http2.mlstatic.com/D_NQ_NP_988910-MLA40124053400_122019-O.webp"
            />
          </li>
        </ul>
        <ul class="menu">
          <li>
            <a href="#slide1"></a>
          </li>
          <li>
            <a href="#slide2"></a>
          </li>
        </ul>
      </div>
      <div class="datosPro">
        <div>
          <label class="nombrePro"><h1>Motorola r9</h1></label>
        </div>
        <div class="precio">
          <h2>$5000</h2>
        </div>
        <div>
          <h3>Cantidad: <select class="cantidad">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select></h3>
        </div>
        <div class="disponibles">
          <h3>Disponibles: 3</h3>
        </div>
        <div>
          <button class="agregar">AGREGAR AL CARRITO</button>
        </div>
        <div class="vacio">&nbsp</div>
      </div>

      <div class="descripcion">
        <h2>Descripción</h2>
        <p>
          Inteligente y predictivo.<br />
          El sistema operativo avanzado Android 9.0 Pie aprende tus hábitos para
          adaptarse a tu rutina y lograr la máxima eficiencia de tu equipo. Tu
          dispositivo tendrá la autonomía necesaria para reducir el consumo
          energético ajustando el brillo automáticamente y gestionando la
          batería de manera inteligente para que puedas priorizar el uso de tus
          aplicaciones habituales.<br />

          Con su pantalla IPS de 6.2", disfrutá de colores intensos y mayor
          nitidez en todos tus contenidos.<br />

          El espacio que necesitás<br />
          Con su memoria interna de 32 GB descargá tus aplicaciones favoritas y
          guardá todas las fotos y videos que quieras.<br />

          Batería superior<br />
          ¡Desenchufate! Con la súper batería de 4000 mAh, tendrás energía por
          mucho más tiempo para jugar, ver series o trabajar sin necesidad de
          recargar tu teléfono.<br />

          Increíble efecto bokeh<br />
          Sus 2 cámaras traseras de 13 Mpx/2 Mpx te permitirán capturar imágenes
          con el famoso modo retrato de poca profundidad de campo.<br />

          Además, el dispositivo cuenta con cámara frontal de 5 Mpx para que
          puedas sacarte divertidas selfies o hacer videollamadas.<br />

          Reconocimiento facial para mayor seguridad<br />
          Su precisa tecnología de reconocimiento facial te garantiza un acceso
          al equipo rápido y seguro. Acercá el dispositivo a tu rostro para
          desbloquearlo instantáneamente y comenzá a disfrutar de una
          experiencia inigualable.<br />
        </p>
      </div>
    </div>
    <!-------------------------------------------------------------------------->
    <footer>
      <div class="DivFoot">
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

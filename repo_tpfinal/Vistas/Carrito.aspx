<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.WebForm16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/header.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/carrito.css" ; type="text/css" />

    <title>Carrito</title>
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
    <div class="engloba">
      <div class="cajita">
        <div class="tituloCarrito">
          <label class="titulo">Carrito de compras</label>
        </div>
        <div class="subtitulo">
          <hr />
        </div>
        <div class="detalleVenta">
          <div class="imagen">
            <img src="./Categorias/5.jpg" />
          </div>
          <div class="detalles">
            <div class="nombre">
              <label> Nombre del producto </label>
            </div>
            <div class="precio">
              <label>$Precio </label>
            </div>
            <div class="cantidad">
              <label
                >Cantidad:
                <select>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                </select></label
              >
            </div>
          </div>
          <div class="Eliminar">
            <button class="estiloElim">Eliminar producto</button>
          </div>
        </div>
      </div>
      <div class="vaciar"><button>Vaciar carrito</button></div>
    </div>

    <div class="Total">
      <ul class="Dcompra">
        <li class="tit">
          <label>RESUMEN DE COMPRA</label>
        </li>
        <div class="datImporte">
        <div class="izquierda">
          <li>Subtotal</li>
          <li>Total</li>
        </div>
        <div class="derecha">
          <li>$</li>
          <li>$</li>
        </div>
      </div>
        <li class="finaliza">
          <button>FINALIZAR COMPRA</button>
        </li>
      </ul>
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


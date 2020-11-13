using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string host = HttpContext.Current.Request.Url.Host;
            //string cadena = HttpContext.Current.Request.Url.AbsoluteUri;
            //string[] Separado = cadena.Split('/');
            CargarCategoriasBarraDeNavegacion();

            NegocioCategoria gC = new NegocioCategoria();
            string cadena = Request["Cat"];
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            String InnerHTML = "";

            // Si no paso parametro
            if (cadena == null)
            {
                infoPro = gP.TodosLosProductosConImagen();

                foreach (DataRow row in infoPro.Rows)
                {
                    InnerHTML = CargarInnerHTML(infoPro);
                }

            } else {

                //Obtengo todas las categorias
                cats = gC.ObtenerCategorias();

                foreach (DataRow row in cats.Rows)
                {
                    if (row[1].ToString() == cadena)
                    {
                        // Si coincide busco los prods de ese id de cat
                        infoPro = gP.ObtenerProdsXIdCategoria(row[0].ToString());
                    }

                }

                if (infoPro.Rows.Count != 0) {

                    foreach (DataRow row in infoPro.Rows)
                    {

                        InnerHTML = CargarInnerHTML(infoPro);
                    }

                } else
                {
                    LblNoPro.Text = "NO SE ENCONTRARON PRODUCTOS";
                }
            }
            productosCategorias.InnerHtml = InnerHTML;
        }
        protected void CargarCategoriasBarraDeNavegacion()
        {
            NegocioCategoria gC = new NegocioCategoria();
            DataTable cat = gC.ObtenerCategorias();
            String CategoriasUl = "";
            CategoriasUl += "<a href =";
            CategoriasUl += '"';
            CategoriasUl += "/Productos.aspx";
            CategoriasUl += '"';
            CategoriasUl += "> Categorias </a>";
            CategoriasUl += "<ul>";

            foreach (DataRow row in cat.Rows)
            {
                CategoriasUl += "<li>";
                String A = "<a href=";
                A += '"';
                A += "/Productos.aspx?Cat=" + row[1].ToString();
                A += '"';
                A += ">" + row[1].ToString() + "</a>";
                CategoriasUl += A;
                CategoriasUl += "</ li >";

            }
            CategoriasUl += "</ul>";
            CargameLasCats.InnerHtml = CategoriasUl;

        }
        protected void btnOrdenar1_Click(object sender, EventArgs e)
        {
            //SETEAR POR BOTON EL TIPO DE CONSULTA
            String tipo = "Mayor";
            NegocioCategoria gC = new NegocioCategoria();
            string cadena = Request["Cat"];
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            String InnerHTML = "";

            //Obtengo todas las categorias
            cats = gC.ObtenerCategorias();


            foreach (DataRow row in cats.Rows)
            {
                if (row[1].ToString() == cadena)
                {
                    // Si coincide busco los prods de ese id de cat
                    infoPro = gP.ObtenerProductoFiltro(row[0].ToString(),tipo);
                }

            }

            if (infoPro.Rows.Count != 0)
            {
                InnerHTML = CargarInnerHTML(infoPro);
            }
            else
            {
                infoPro = gP.ObtenerProdPorPrecioSinCategoria(tipo);
                InnerHTML = CargarInnerHTML(infoPro);
            }

            productosCategorias.InnerHtml = InnerHTML;
        }
        protected void OrdenarViejo_Click(object sender, EventArgs e)
        {
            //SETEAR POR BOTON EL TIPO DE CONSULTA
            String tipo = "Viejo";
            NegocioCategoria gC = new NegocioCategoria();
            string cadena = Request["Cat"];
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            String InnerHTML = "";

            //Obtengo todas las categorias
            cats = gC.ObtenerCategorias();


            foreach (DataRow row in cats.Rows)
            {
                if (row[1].ToString() == cadena)
                {
                    // Si coincide busco los prods de ese id de cat
                    infoPro = gP.ObtenerProductoFiltro(row[0].ToString(), tipo);
                }

            }

            if (infoPro.Rows.Count != 0)
            {
                InnerHTML = CargarInnerHTML(infoPro);
            }
            else
            {
                infoPro = gP.ObtenerProdPorPrecioSinCategoria(tipo);
                InnerHTML = CargarInnerHTML(infoPro);
            }

            productosCategorias.InnerHtml = InnerHTML;
        }

        protected void OrdenarNuevo_Click(object sender, EventArgs e)
        {
            //SETEAR POR BOTON EL TIPO DE CONSULTA
            String tipo = "Nuevo";
            NegocioCategoria gC = new NegocioCategoria();
            string cadena = Request["Cat"];
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            String InnerHTML = "";

            //Obtengo todas las categorias
            cats = gC.ObtenerCategorias();


            foreach (DataRow row in cats.Rows)
            {
                if (row[1].ToString() == cadena)
                {
                    // Si coincide busco los prods de ese id de cat
                    infoPro = gP.ObtenerProductoFiltro(row[0].ToString(), tipo);
                }

            }

            if (infoPro.Rows.Count != 0)
            {
                InnerHTML = CargarInnerHTML(infoPro);
            }
            else
            {
                infoPro = gP.ObtenerProdPorPrecioSinCategoria(tipo);
                InnerHTML = CargarInnerHTML(infoPro);
            }

            productosCategorias.InnerHtml = InnerHTML;
        }


        protected void btnOrdenar2_Click(object sender, EventArgs e)
        {
            //SETEAR POR BOTON EL TIPO DE CONSULTA
            String tipo = "Menor";
            NegocioCategoria gC = new NegocioCategoria();
            string cadena = Request["Cat"];
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            String InnerHTML = "";

            //Obtengo todas las categorias
            cats = gC.ObtenerCategorias();


            foreach (DataRow row in cats.Rows)
            {
                if (row[1].ToString() == cadena)
                {
                    // Si coincide busco los prods de ese id de cat
                    infoPro = gP.ObtenerProductoFiltro(row[0].ToString(), tipo);
                }

            }

            if (infoPro.Rows.Count != 0)
            {
                InnerHTML = CargarInnerHTML(infoPro);
            }
            else
            {
                infoPro = gP.ObtenerProdPorPrecioSinCategoria(tipo);
                InnerHTML = CargarInnerHTML(infoPro);
            }

            productosCategorias.InnerHtml = InnerHTML;
        }


        //FUNCION QUE CARGA A STRING INNERHTML LOS PRODUCTOS A PARTIR
        //DE UNA TABLA Y DEVULVE STRING COMPLETO
        protected String CargarInnerHTML(DataTable tabla)
        {
            String InnerHTML = "";

            foreach (DataRow row in tabla.Rows)
            {
                String A = "<a class='p1' href=";
                A += '"';
                A += "/Producto.aspx?Pro=" + row[0].ToString();
                A += '"';
                A += " style='background: url(" + row[5].ToString() + ") no-repeat center;background-size: cover;'";
                A += '>';
                InnerHTML += A;
                InnerHTML += "<label class='lblp1'>" + row[1].ToString() + "</label>";
                InnerHTML += "</a>";
            }

            return InnerHTML;
        }

        
    }

}
    

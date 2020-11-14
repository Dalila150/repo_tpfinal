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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarCategoriasBarraDeNavegacion();

            NegocioProducto Np = new NegocioProducto();
            string cadena = Request["Pro"];
            DataTable prod = new DataTable();
            DataTable infoPro = new DataTable();

            String InnerHTML = "";

            if (cadena == null)
            {
                Response.Redirect("/Productos.aspx");
            }
            else
            {
                infoPro = Np.ObtenerProductoId(cadena);

                if(infoPro.Rows.Count != 0)
                {
                        InnerHTML = CargarInnerHTML(infoPro);
                }
                else
                {
                    lblNoPro.InnerText = "NO SE ENCONTRO UN PRODUCTO";
                }

            }

            datosPro.InnerHtml = InnerHTML;

        }
        //FUNCION QUE CARGA A STRING INNERHTML LOS PRODUCTOS A PARTIR
        //DE UNA TABLA Y DEVULVE STRING COMPLETO
        protected String CargarInnerHTML(DataTable tabla)
        {
            String InnerHTML = "";

            foreach (DataRow row in tabla.Rows)
            {
                String A = "<h1>";
                A += row[1].ToString();
                InnerHTML += "</h1>";

            }

            return InnerHTML;
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
    }
}
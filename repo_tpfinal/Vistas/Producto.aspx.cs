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

            ddlCantidadSeleccion.Items.Add(new ListItem { Text = "2", Value = "2" });
            ddlCantidadSeleccion.Items.Add(new ListItem { Text = "1", Value = "1" });

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
                        datosDelProducto.InnerHtml = InnerHTML;
                        InnerHTML = "";
                        InnerHTML = InnerHTML += "<img src='" + infoPro.Rows[0][2].ToString() + "'/>";
                        imagenProducto.InnerHtml = InnerHTML;
                        InnerHTML = "";
                        InnerHTML += "<p>" + infoPro.Rows[0][4].ToString() + "</p>";
                        descripcion.InnerHtml = InnerHTML;
                }
                else
                {
                    lblNoPro.InnerText = "NO SE ENCONTRO UN PRODUCTO";
                }

            }

            

        }
        //FUNCION QUE CARGA A STRING INNERHTML LOS PRODUCTOS A PARTIR
        //DE UNA TABLA Y DEVULVE STRING COMPLETO
        protected String CargarInnerHTML(DataTable tabla)
        {
            String InnerHTML = "";

            foreach (DataRow row in tabla.Rows)
            {
               
                InnerHTML += "<h1>" + row[1].ToString() + "</h1>";
                InnerHTML += "<h3 class='precio'>" + row[5].ToString() + "</h1>";
                InnerHTML += "<h3  class='disponibles'>Disponibles: " + row[3].ToString()+"</h3>";
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

        protected void bntAgregarProdCarrito_Click(object sender, EventArgs e)
        {
            NegocioProducto Np = new NegocioProducto();
            string cadena = Request["Pro"];
            DataTable infoPro = new DataTable();
            DataTable ProductoCarrito = new DataTable("Carrito");

            infoPro = Np.ObtenerProductoId(cadena);

            if (Session["carrito"] == null) { 
                // CREO COLUMNAS PARA NUESTRA TABLA CARRITO
                ProductoCarrito.Columns.Add("ID_PRODUCTO", typeof(int));
                ProductoCarrito.Columns.Add("CANTIDAD", typeof(int));
                ProductoCarrito.Columns.Add("PRECIO", typeof(decimal));
                ProductoCarrito.Columns.Add("IMAGEN", typeof(String));
            }
            ProductoCarrito.Rows.Add(int.Parse(cadena),int.Parse(ddlCantidadSeleccion.SelectedValue),float.Parse(infoPro.Rows[0][5].ToString()), infoPro.Rows[0][2].ToString());
            
            Session["carrito"] = ProductoCarrito;
            

        }

    
    }
}
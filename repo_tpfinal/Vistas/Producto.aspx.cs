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

                if (infoPro.Rows.Count != 0)
                {
                    int i = 1;
                    int cantidadAnterior = 0;
                    ddlCantidadSeleccion.Items.Clear();
                    System.Diagnostics.Debug.WriteLine(Session["carrito"]);

                    if (Session["carrito"] != null)
                    {
                        System.Diagnostics.Debug.WriteLine(Session["carrito"]);
                        DataTable ProductoCarrito = (DataTable)Session["carrito"];

                        foreach (DataRow row in ProductoCarrito.Rows)
                        {
                            // SI ESTABA CARGADO LE CAMBIO LA CANTIDAD
                            if (int.Parse(row[0].ToString()) == int.Parse(cadena))
                            {
                                
                                cantidadAnterior = int.Parse(row[1].ToString());
                                System.Diagnostics.Debug.WriteLine(cantidadAnterior);
                            }
                        }
                    } 

                    if( cantidadAnterior == 0) {
                        if (selectCant.Value != "" && selectCant.Value != null)
                        {
                            cantidadAnterior = int.Parse(selectCant.Value);
                        }
                    }

                    int disponibles = 0;

                    if(cantidadAnterior != 0)
                    {
                       disponibles =  int.Parse(infoPro.Rows[0][3].ToString()) - cantidadAnterior;
                    } else
                    {
                       disponibles = int.Parse(infoPro.Rows[0][3].ToString());
                    }

                    disponibles++;

                    while (disponibles != i) {

                        ddlCantidadSeleccion.Items.Add(new ListItem { Text = i.ToString() , Value = i.ToString() });
                        i++;
                    }

                    if(ddlCantidadSeleccion.Items.Count == 0)
                    {
                        ddlCantidadSeleccion.Items.Add(new ListItem { Text = "No disponible", Value = "" });
                        bntAgregarProdCarrito.Enabled = false;
                    }

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
                    lblNoPro.InnerText = "NO SE ENCONTRO EL PRODUCTO";
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
                InnerHTML += "<h3 class='precio'> $ " + row[5].ToString() + "</h1>";
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
            bool yaEstabaCargado = false;
            DataTable infoPro = new DataTable();
            DataTable ProductoCarrito;

            if (Session["carrito"] != null) {

                ProductoCarrito = (DataTable)Session["carrito"];

            } else {

                ProductoCarrito = new DataTable("Carrito");
                // CREO COLUMNAS PARA NUESTRA TABLA CARRITO
                ProductoCarrito.Columns.Add("ID_PRODUCTO", typeof(int));
                ProductoCarrito.Columns.Add("CANTIDAD", typeof(int));
                ProductoCarrito.Columns.Add("PRECIO", typeof(decimal));
                ProductoCarrito.Columns.Add("IMAGEN", typeof(String));

            }

            infoPro = Np.ObtenerProductoId(cadena);

            // RECORRO TODOS LOS PRODUCTOS PARA SABER SI YA HAY ALGO CARGADO
            foreach (DataRow row in ProductoCarrito.Rows)
            {
                // SI ESTABA CARGADO LE CAMBIO LA CANTIDAD
                if (int.Parse(row[0].ToString()) == int.Parse(cadena))
                {
                    int cantidadNueva;
                    cantidadNueva = int.Parse(row[1].ToString()) + int.Parse(selectCant.Value);
                    row[1] = cantidadNueva;
                    yaEstabaCargado = true;
                }

            }

            // SI NO ESTABA CARGADO ESE PRODUCTO LO CARGO
            if (yaEstabaCargado == false)
            {
                ProductoCarrito.Rows.Add(int.Parse(cadena), int.Parse(selectCant.Value), float.Parse(infoPro.Rows[0][5].ToString()), infoPro.Rows[0][2].ToString());
            }

            // HAYA PASADO LO QUE SEA LO GUARDO
            Session["carrito"] = ProductoCarrito;
<<<<<<< Updated upstream
            

        }

    
=======

            string cadenaPro = Request["Pro"];
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            nameValues.Set("Pro", cadenaPro);
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();
            Response.Redirect(url + updatedQueryString);
        }

>>>>>>> Stashed changes
    }
}
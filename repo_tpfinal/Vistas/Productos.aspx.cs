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

            //-------------MARCAS---------------------
            DataTable dt_Mar = new DataTable();
            NegocioProducto Gp = new NegocioProducto();

            dt_Mar = Gp.ObtenerMarcas();

            ddMarcas.Items.Add(new ListItem { Text = "Seleccione", Value = "" });

            foreach (DataRow row in dt_Mar.Rows)
            {
                ddMarcas.Items.Add(new ListItem { Text = row[1].ToString(), Value = row[0].ToString() });
            }
            //----------------------------------------
            
            bool paso = false;
            int PasoAntiguedad = 0;
            String InnerHTML = "";
            String Consulta = "";
            //String CategoriaSeleccionada = "";

            string cadenaCat = Request["Cat"];
            string cadenaOrdPre = Request["OrdPre"];
            string cadenaAntiguedad = Request["Anti"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            ddMarcas.SelectedValue = cadenaMarca;
            NegocioProducto gP = new NegocioProducto();
            DataTable cats = new DataTable();
            DataTable infoPro = new DataTable();
            string urlWeb = HttpContext.Current.Request.Url.AbsoluteUri;

            NegocioCategoria gC = new NegocioCategoria();
            cats = gC.ObtenerCategorias();

            foreach (DataRow row in cats.Rows)
            {
                if (row[1].ToString() == cadenaCat)
                {
                    if (cadenaBusqueda == null && cadenaOrdPre == null && cadenaAntiguedad == null && cadenaMarca == null && cadenaPrecioMin == null && cadenaPrecioMax == null)
                    {
                        // Si coincide busco los prods de ese id de cat
                        Consulta = "AND producto.ID_Categoria = " + row[0].ToString();
                        paso = true;
                    }

                    if (paso == false)
                    {
                        Consulta += " AND producto.ID_Categoria = " + row[0].ToString();

                        if (cadenaBusqueda != null && cadenaBusqueda != "")
                        {
                            Consulta += " AND producto.Nombre LIKE '%" + cadenaBusqueda + "%'";
                        }

                        if (cadenaMarca != null && cadenaMarca != "")
                        {
                            Consulta += " AND producto.ID_marca = " + cadenaMarca;
                        }

                        if (cadenaPrecioMin != null && cadenaPrecioMin != "")
                        {
                            Consulta += " AND producto.Precio_unitario >= " + cadenaPrecioMin;
                            txtMinimo.Value = cadenaPrecioMin;
                            //HiddenPrecioMin.Value = cadenaPrecioMin;
                        }
                        if (cadenaPrecioMax != null && cadenaPrecioMax != "")
                        {
                            Consulta += " AND producto.Precio_unitario <= " + cadenaPrecioMax;
                            txtMaximo.Value = cadenaPrecioMax;
                            //HiddenPrecioMax.Value = cadenaPrecioMax;
                        }

                        if (cadenaAntiguedad != null && cadenaAntiguedad != "")
                        {
                            if (cadenaAntiguedad == "viejo")
                            {
                                Consulta += " order by ID asc";
                            }
                            else if (cadenaAntiguedad == "nuevo")
                            {
                                Consulta += " order by ID desc ";
                            }
                            PasoAntiguedad = 1;
                        }

                        if(cadenaOrdPre != null && cadenaOrdPre != "")
                        {
                            if (PasoAntiguedad == 0) {
                                if (cadenaOrdPre == "MayorPrimero")
                                {
                                    Consulta += " order by Precio desc";
                                } else if(cadenaOrdPre == "MenorPrimero")
                                {
                                    Consulta += " order by Precio asc";
                                }
                            }
                            else
                            {
                                if (cadenaOrdPre == "MayorPrimero")
                                {
                                    Consulta += ", Precio desc";
                                }
                                else if (cadenaOrdPre == "MenorPrimero")
                                {
                                    Consulta += ", Precio asc";
                                }
                            }
                        }

                    }

                    System.Diagnostics.Debug.WriteLine(Consulta);
                    infoPro = gP.ObtenerProdsConFiltro(Consulta);

                }
            }

            if ( Consulta == "")
            {
                if (cadenaBusqueda != null && cadenaBusqueda != "")
                {
                    Consulta += " AND producto.Nombre LIKE '%" + cadenaBusqueda + "%'";
                }

                if (cadenaMarca != null && cadenaMarca != "")
                {
                    Consulta += " AND producto.ID_marca = " + cadenaMarca;
                }

                if (cadenaPrecioMin != null && cadenaPrecioMin != "")
                {
                    Consulta += " AND producto.Precio_unitario >= " + cadenaPrecioMin;
                    txtMinimo.Value = cadenaPrecioMin;
                    //HiddenPrecioMin.Value = cadenaPrecioMin;
                }
                if (cadenaPrecioMax != null && cadenaPrecioMax != "")
                {
                    Consulta += " AND producto.Precio_unitario <= " + cadenaPrecioMax;
                    txtMaximo.Value = cadenaPrecioMax;
                    //HiddenPrecioMax.Value = cadenaPrecioMax;
                }

                if (cadenaAntiguedad != null && cadenaAntiguedad != "")
                {
                    if (cadenaAntiguedad == "viejo")
                    {
                        Consulta += " order by ID asc";
                    }
                    else if (cadenaAntiguedad == "nuevo")
                    {
                        Consulta += " order by ID desc ";
                    }
                    PasoAntiguedad = 1;
                }

                if (cadenaOrdPre != null && cadenaOrdPre != "")
                {
                    if (PasoAntiguedad == 0)
                    {
                        if (cadenaOrdPre == "MayorPrimero")
                        {
                            Consulta += " order by Precio desc";
                        }
                        else if (cadenaOrdPre == "MenorPrimero")
                        {
                            Consulta += " order by Precio asc";
                        }
                    }
                    else
                    {
                        if (cadenaOrdPre == "MayorPrimero")
                        {
                            Consulta += ", Precio desc";
                        }
                        else if (cadenaOrdPre == "MenorPrimero")
                        {
                            Consulta += ", Precio asc";
                        }
                    }
                }
                System.Diagnostics.Debug.WriteLine(Consulta);
                infoPro = gP.ObtenerProdsConFiltro(Consulta);
            }


            if (infoPro.Rows.Count != 0)
            {

                InnerHTML = CargarInnerHTML(infoPro);

            }
            else
            {
                LblNoPro.Text = "NO SE ENCONTRARON PRODUCTOS PARA LOS FILTROS SELECCIONADOS";

            }

            productosCategorias.InnerHtml = InnerHTML;

        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            string cadenaCat = Request["Cat"];
            string cadenaOrdPre = Request["OrdPre"];
            string cadenaAntiguedad = Request["Anti"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            // CREAR VARIABLE DE PARAMETROS
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if (cadenaCat != null)
            //{
            //    nameValues.Set("Cat", cadenaCat);
            //}
            //if (cadenaOrdPre != null)
            //{
            //    nameValues.Set("OrdPre", cadenaOrdPre);
            //}
            //if (cadenaAntiguedad != null)
            //{
            //    nameValues.Set("Anti", cadenaAntiguedad);
            //}
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaPrecioMin != null)
            //{
            //    nameValues.Set("PrecioMin", cadenaPrecioMin);
            //}
            //if (cadenaPrecioMax != null)
            //{
            //    nameValues.Set("PrecioMax", cadenaPrecioMax);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            nameValues.Set("Busqueda", txtBuscar.Text);
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect(url + updatedQueryString);
        }

        protected void btnMayorPrecio_Click(object sender, EventArgs e)
        {

            string cadenaCat = Request["Cat"];
            string cadenaAntiguedad = Request["Anti"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            // CREAR VARIABLE DE PARAMETROS
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if(cadenaCat != null) { 
            //    nameValues.Set("Cat", cadenaCat);
            //}
            ////if (cadenaAntiguedad != null)
            ////{
            ////    nameValues.Set("Anti", cadenaAntiguedad);
            ////}
            nameValues.Remove("Anti");
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaPrecioMin != null)
            //{
            //    nameValues.Set("PrecioMin", cadenaPrecioMin);
            //}
            //if (cadenaPrecioMax != null)
            //{
            //    nameValues.Set("PrecioMax", cadenaPrecioMax);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            nameValues.Set("OrdPre", "MayorPrimero");
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();
            
            Response.Redirect(url + updatedQueryString);
        }

        protected void btnMenorPrecio_Click(object sender, EventArgs e)
        {
            string cadenaCat = Request["Cat"];
            string cadenaAntiguedad = Request["Anti"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if (cadenaCat != null)
            //{
            //    nameValues.Set("Cat", cadenaCat);
            //}
            ////if (cadenaAntiguedad != null)
            ////{
            ////    nameValues.Set("Anti", cadenaAntiguedad);
            ////}
            nameValues.Remove("Anti");
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaPrecioMin != null)
            //{
            //    nameValues.Set("PrecioMin", cadenaPrecioMin);
            //}
            //if (cadenaPrecioMax != null)
            //{
            //    nameValues.Set("PrecioMax", cadenaPrecioMax);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            nameValues.Set("OrdPre", "MenorPrimero");
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect(url + updatedQueryString);

        }

        protected void btnMasViejo_Click(object sender, EventArgs e)
        {
            string cadenaCat = Request["Cat"];
            string cadenaOrdPre = Request["OrdPre"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if (cadenaCat != null)
            //{
            //    nameValues.Set("Cat", cadenaCat);
            //}
            ////if (cadenaOrdPre != null)
            ////{
            ////    nameValues.Set("OrdPre", cadenaOrdPre);
            ////}
            nameValues.Remove("OrdPre");
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaPrecioMin != null)
            //{
            //    nameValues.Set("PrecioMin", cadenaPrecioMin);
            //}
            //if (cadenaPrecioMax != null)
            //{
            //    nameValues.Set("PrecioMax", cadenaPrecioMax);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            nameValues.Set("Anti", "viejo");
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect(url + updatedQueryString);
        }

        protected void btnMasNuevo_Click(object sender, EventArgs e)
        {
            string cadenaCat = Request["Cat"];
            string cadenaOrdPre = Request["OrdPre"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaBusqueda = Request["Busqueda"];

            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if (cadenaCat != null)
            //{
            //    nameValues.Set("Cat", cadenaCat);
            //}
            ////if (cadenaOrdPre != null)
            ////{
            ////    nameValues.Set("OrdPre", cadenaOrdPre);
            ////}
            nameValues.Remove("OrdPre");
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaPrecioMin != null)
            //{
            //    nameValues.Set("PrecioMin", cadenaPrecioMin);
            //}
            //if (cadenaPrecioMax != null)
            //{
            //    nameValues.Set("PrecioMax", cadenaPrecioMax);
            //}
            //if (cadenaBusqueda != null)
            //{
            //    nameValues.Set("Busqueda", cadenaBusqueda);
            //}
            nameValues.Set("Anti", "nuevo");
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect(url + updatedQueryString);

        }

        protected void ddMarcas_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(hidden.Value);
            if (hidden.Value != "" || hidden.Value != null)
            {

                string cadenaCat = Request["Cat"];
                string cadenaAntiguedad = Request["Anti"];
                string cadenaOrdPre = Request["OrdPre"];
                string cadenaPrecioMin = Request["PrecioMin"];
                string cadenaPrecioMax = Request["PrecioMax"];
                string cadenaBusqueda = Request["Busqueda"];

                var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
                //if (cadenaCat != null)
                //{
                //    nameValues.Set("Cat", cadenaCat);
                //}
                //if (cadenaAntiguedad != null)
                //{
                //    nameValues.Set("Anti", cadenaAntiguedad);
                //}
                //if (cadenaOrdPre != null)
                //{
                //    nameValues.Set("OrdPre", cadenaOrdPre);
                //}
                //if (cadenaPrecioMin != null)
                //{
                //    nameValues.Set("PrecioMin", cadenaPrecioMin);
                //}
                //if (cadenaPrecioMax != null)
                //{
                //    nameValues.Set("PrecioMax", cadenaPrecioMax);
                //}
                //if (cadenaBusqueda != null)
                //{
                //    nameValues.Set("Busqueda", cadenaBusqueda);
                //}
                nameValues.Set("Marca", hidden.Value);
                string url = Request.Url.AbsolutePath;
                string updatedQueryString = "?" + nameValues.ToString();

                System.Diagnostics.Debug.WriteLine(updatedQueryString);
                Response.Redirect(url + updatedQueryString);


            }
        }

        protected void btnAplicarPrecio_Click(object sender, EventArgs e)
        {
            string cadenaCat = Request["Cat"];
            string cadenaAntiguedad = Request["Anti"];
            string cadenaMarca = Request["Marca"];
            string cadenaPrecioMin = Request["PrecioMin"];
            string cadenaPrecioMax = Request["PrecioMax"];
            string cadenaOrdPre = Request["OrdPre"];
            string cadenaBusqueda = Request["Busqueda"];

            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            //if (cadenaCat != null)
            //{
            //    nameValues.Set("Cat", cadenaCat);
            //}
            //if (cadenaAntiguedad != null)
            //{
            //    nameValues.Set("Anti", cadenaAntiguedad);
            //}
            //if (cadenaMarca != null)
            //{
            //    nameValues.Set("Marca", cadenaMarca);
            //}
            //if (cadenaOrdPre != null)
            //{
            //    nameValues.Set("OrdPre", cadenaOrdPre);
            //}

           

            if (cadenaPrecioMax != HiddenPrecioMax.Value)
            {
                if (HiddenPrecioMax.Value != "0") { 
                    if (HiddenPrecioMax.Value == "" || HiddenPrecioMax.Value == null)
                    {
                    
                    }
                    else
                    {
                        nameValues.Set("PrecioMax", HiddenPrecioMax.Value);
                    }
                }
                else
                {
                    nameValues.Remove("PrecioMax");
                }
            }
            else
            {
                    nameValues.Set("PrecioMax", cadenaPrecioMax);
            }

            //System.Diagnostics.Debug.WriteLine("CADENA" + cadenaPrecioMin);
            //System.Diagnostics.Debug.WriteLine("VALOR MODIFICADO" + HiddenPrecioMin.Value);

            if (cadenaPrecioMin != HiddenPrecioMin.Value)
            {
                if (HiddenPrecioMin.Value != "0"){
                    if (HiddenPrecioMin.Value == "" || HiddenPrecioMin.Value == null) {
                    
                    } else
                    {
                        nameValues.Set("PrecioMin", HiddenPrecioMin.Value);
                    }
                }
                else
                    {
                        nameValues.Remove("PrecioMin");
                    }
            }
            else
            {
                nameValues.Set("PrecioMin", HiddenPrecioMin.Value);
            }
            if (cadenaBusqueda != null)
            {
                nameValues.Set("Busqueda", cadenaBusqueda);
            }

            //System.Diagnostics.Debug.WriteLine("");
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect(url + updatedQueryString);
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
                InnerHTML += "<label class='lblp1'>" + row[1].ToString() + "<br>";
                InnerHTML += "<p Style='font-size:20px;margin: 0px;font-weight: bold;color: darkred'> $" + row[4].ToString() + "</p></label>";
                InnerHTML += "</a>";
            }

            return InnerHTML;
        }

        protected String LabelProperty
        {
            get
            {
                return hidden.Value;
            }
            set
            {
                hidden.Value = value;
            }
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
    

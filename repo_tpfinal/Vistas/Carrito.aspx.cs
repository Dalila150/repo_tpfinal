using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;

namespace Vistas
{
    public partial class WebForm16 : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (IsPostBack==false)
            {

                NegocioVenta neg_ven = new NegocioVenta();

                DataTable listasucursales = neg_ven.ListadoSucursales();


                ddlMododePago.Items.Add(new ListItem { Text = "Seleccione", Value = "" });
                ddlMododePago.Items.Add(new ListItem { Text = "Débito", Value = "1" });
                ddlMododePago.Items.Add(new ListItem { Text = "Crédito", Value = "2" });
                ddlMododePago.Items.Add(new ListItem { Text = "Efectivo", Value = "3" });
                ddlModoEnvio.Items.Add(new ListItem { Text = "Seleccione", Value = "" });
                ddlModoEnvio.Items.Add(new ListItem { Text = "Retiro por sucursal", Value = "1" });
                ddlModoEnvio.Items.Add(new ListItem { Text = "Envio a domicilio", Value = "2" });

                ddlSucursales.DataSource = listasucursales;
                ddlSucursales.DataTextField = "Nombre";
                ddlSucursales.DataValueField = "Id_Sucursal";
                ddlSucursales.DataBind();


            }



            if (Session["carrito"]!= null)
            {
                grdCarrito.DataSource = (DataTable)Session["carrito"];
                grdCarrito.DataBind();
            }


            int cantidad = int.Parse(grdCarrito.Rows[0].Cells[1].Text);
            float precio = float.Parse(grdCarrito.Rows[0].Cells[2].Text);

            float total = cantidad * precio;



            lblPrecio.Text =  total.ToString();
            

            
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

            // SI HAY CARGO DATOS DEL CARRO
            if (Session["Carrito"] != null)
            {
                String InnerHTML = "";
                DataTable infoCarrito = (DataTable)Session["Carrito"];
                int TotalCarro = 0;
                int CantProds = 0;

                foreach (DataRow row in infoCarrito.Rows)
                {
                    CantProds += int.Parse(row[1].ToString());
                    TotalCarro += CantProds * int.Parse(row[2].ToString());
                }

                InnerHTML += TotalCarro + "(" + CantProds + ")";
                datosCarrito.InnerHtml = InnerHTML;
            }



        }

        

        protected void btnVaciar_Click(object sender, EventArgs e)
        {
            Session["carrito"] = null;
            grdCarrito.DataSource = null;
            grdCarrito.DataBind();
        }

        protected void btnFinalizarCompra_Click(object sender, EventArgs e)
        {

            int cantidad = int.Parse(grdCarrito.Rows[0].Cells[1].Text);
            decimal precio = decimal.Parse(grdCarrito.Rows[0].Cells[2].Text);

            decimal total = cantidad * precio;

            NegocioVenta neg_vent = new NegocioVenta();

           

            Ventas datos_venta = new Ventas();

            datos_venta.Fecha1 = DateTime.Today;
            // datos_venta.ID_usuario1 =
            //datos_venta.Direccion1 =
            datos_venta.Total1 = total;
            datos_venta.Modo_envio1 = int.Parse(ddlModoEnvio.SelectedValue);
            datos_venta.Modo_pago1 = int.Parse(ddlMododePago.SelectedValue);
            datos_venta.Nro_tarjeta1 = txtNroTarjeta.Text;
            datos_venta.Codigo_tarjeta1 = txtNroSeguridad.Text;
            datos_venta.ID_sucursal1 = int.Parse(ddlSucursales.SelectedValue);



            bool registro_venta =  neg_vent.Registro_de_Venta(datos_venta);

            if (registro_venta == true)
            {
                lblMensajeCompra.Text = "Gracias por su compra";
            }
            else
            {
                lblMensajeCompra.Text = "Hubo un error al registrar su compra";
            }
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            nameValues.Set("Busqueda", txtBuscar.Text);
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect("/productos.aspx" + updatedQueryString);
        }

        protected void ddlSucursales_SelectedIndexChanged(object sender, EventArgs e)
        {


            


        }



    }
}
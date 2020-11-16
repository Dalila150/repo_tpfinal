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

        NegocioUsuario Neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            //-----------------------------------------------
            Usuarios Usu = new Usuarios();
            if (Request.Cookies["NombreUsuario"] != null)
            {
                HttpCookie ck = Request.Cookies["NombreUsuario"];

                Usu = Neg.DevolverUsuarioCompleto(Request.Cookies["NombreUsuario"].Value);

                String IconosInnerHTML = "";
                Char A = '"';
                IconosInnerHTML += "<a href=" + A + "/Datos.aspx" + A + " class=" + A + "fas fa-user user" + A + " style=" + A + "text-decoration: none;" + A + "><div id = 'UsuarioLogueadoNombre' runat='server' style='font-size:20px;'>" + Usu.getNombreUsuario() + "</div><div id = 'UsuarioLogueadoApellido' runat='server' style='font-size:20px;'>" + Usu.getApellidoUsuario() + "</div></a>";
                infoUser.InnerHtml = IconosInnerHTML;
                IconosInnerHTML = "";
                IconosInnerHTML += "<a href=" + A + "/Home.aspx?Sign-out=true" + A + " class=" + A + "fas fa-sign-out-alt" + A + " style=" + A + "font-size: 1.6rem;text-decoration: none;color: rgba(82, 28, 28, 0.959);" + A + " aria-hidden=" + A + "true" + A + "></a>";
                IconoSalir.InnerHtml = IconosInnerHTML;
            }
            else
            {
                String IconosInnerHTML = "";
                Char A = '"';
                IconosInnerHTML += "<a href=" + A + "/IniciarSesion.aspx" + A + " class=" + A + "fas fa-user user" + A + "><div id = 'UsuarioLogueadoNombre' runat='server' style='font-size:20px'></div><div id = 'UsuarioLogueadoApellido' runat='server' style='font-size:20px;'></div></a>";
                infoUser.InnerHtml = IconosInnerHTML;
            }
            //-----------------------------------------------

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



            if (Session["Carrito"]!= null)
            {
                grdCarrito.DataSource = (DataTable)Session["Carrito"];
                grdCarrito.DataBind();
            }

            // ESTO NO ANDA Y ROMPE TODO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            //int cantidad = int.Parse(grdCarrito.Rows[0].Cells[1].Text);
            //float precio = float.Parse(grdCarrito.Rows[0].Cells[2].Text);

            //float total = cantidad * precio;

            //lblPrecio.Text =  total.ToString();
            // ESTO NO ANDA Y ROMPE TODO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



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
            Session["Carrito"] = null;
            grdCarrito.DataSource = null;
            grdCarrito.DataBind();
        }

        protected void btnFinalizarCompra_Click(object sender, EventArgs e)
        {

            NegocioVenta neg_vent = new NegocioVenta();
            Ventas datos_venta = new Ventas();

            Negocio_DetalleVenta det_v = new Negocio_DetalleVenta();
            Detalle_venta det_v_entidades = new Detalle_venta();


            int total = 0;
            int CantProds = 0;
            
          

            if (Session["Carrito"]!=null)
            {
                DataTable info_carrito = (DataTable)Session["Carrito"];

                 

                foreach (DataRow row in info_carrito.Rows)
                {
                   
                    CantProds += int.Parse(row[1].ToString());
                    total += CantProds * int.Parse(row[2].ToString());
                  
                }

            }


            DateTime fecha = DateTime.Today;
            fecha.ToShortDateString().ToString();

              
            datos_venta.Fecha1 = fecha;
            datos_venta.ID_usuario1 = Convert.ToInt32(Session["IdUsuario"]);
            datos_venta.Direccion1 = Session["DireccionUsuario"].ToString();
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

                int id_producto;
                decimal precio_u;

                if (Session["Carrito"] != null)
                {
                    DataTable info_carrito = (DataTable)Session["Carrito"];
                    id_producto = Convert.ToInt32(info_carrito.Rows[0]["ID_PRODUCTO"]);
                    precio_u = Convert.ToInt32(info_carrito.Rows[0]["PRECIO"]);


                    det_v_entidades.set_idventa(datos_venta.ID_venta1);
                    det_v_entidades.set_idproducto(id_producto);
                    det_v_entidades.set_cantidad(CantProds);
                    det_v_entidades.set_precio_u(precio_u);

                }

               bool registro_detalle = det_v.Registro_detalle_venta(det_v_entidades);

   

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
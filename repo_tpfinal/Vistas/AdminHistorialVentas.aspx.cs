using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class AdminHistorialVentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //mostrar todas las cats
            //cargarGridView();

            if (IsPostBack == false)
            {
                cargarGridView();
            }

        }

        public void cargarGridView()
        {
            NegocioVenta gVenta = new NegocioVenta();

            grdRegistros.DataSource = gVenta.TodasLasVentas();
            grdRegistros.DataBind();
        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdRegistros.PageIndex = e.NewPageIndex;
            cargarGridView();
        }

        protected void grdRegistros_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string s_idVenta = ((Label)grdRegistros.Rows[e.NewSelectedIndex].FindControl("lbl_it_id")).Text;

            Ventas vent = new Ventas();

            vent.ID_venta1 = Convert.ToInt32(s_idVenta);
            //direccionar a detalles de venta con idVenta
            Response.Redirect("AdminDetalleVenta.aspx?idVenta="+ vent.ID_venta1);
        }
    }
}
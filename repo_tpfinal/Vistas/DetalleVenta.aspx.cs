using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class DetalleVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGridView();
        }
        public void cargarGridView()
        {
            NegocioVenta NegV = new NegocioVenta();
            int ID_Venta = Convert.ToInt32(Session["ID_DetalleVenta"]);

            grdDetalleVentasUsuario.DataSource = NegV.DetallesVentasUsuario(ID_Venta);
            grdDetalleVentasUsuario.DataBind();
        }

        protected void grdDetalleVentasUsuario_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void grdDetalleVentasUsuario_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdDetalleVentasUsuario.PageIndex = e.NewPageIndex;
            cargarGridView();
        }
    }
}
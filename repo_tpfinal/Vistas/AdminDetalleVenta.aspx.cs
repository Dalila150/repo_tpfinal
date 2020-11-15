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
    public partial class AdminDetalleVenta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //recibe el parametro de Ventas.aspx
            String idV;
            idV = Request.QueryString["idVenta"];

            lblMensaje.Text = " Id Venta: " +idV;

            cargarGridView(Convert.ToInt32(idV));

        }

        public void cargarGridView(int idV)
        {
            NegocioVenta gVenta = new NegocioVenta();

            grdRegistros.DataSource = gVenta.TodosDetallesVentas(idV);
            grdRegistros.DataBind();
        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            String idV;
            idV = Request.QueryString["idVenta"];
            grdRegistros.PageIndex = e.NewPageIndex;
            cargarGridView(Convert.ToInt32(idV));
        }
    }
}
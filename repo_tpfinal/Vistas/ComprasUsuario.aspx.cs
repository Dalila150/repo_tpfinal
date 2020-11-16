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
    public partial class ComprasUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null)
            {
                HttpCookie ck = Request.Cookies["NombreUsuario"];
            }
            cargarGridView();
            if (IsPostBack == false)
            {
                cargarGridView();
            }
        }

        public void cargarGridView()
        {

             NegocioVenta NegV = new NegocioVenta();
            grdVentasUsuarios.DataSource = NegV.TodasLasVentasUsuario(Request.Cookies["NombreUsuario"].Value);
            grdVentasUsuarios.DataBind();
        }

        protected void grdVentasUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ID_DetalleVenta"] = grdVentasUsuarios.SelectedRow.Cells[1].Text;
            Response.Redirect("DetalleVenta.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class AdminListCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            NegocioCategoria gCategorias = new NegocioCategoria();

            //if (txtBuscar.Text != "")
            //{
            //    grdCategorias.DataSource = gProductos.BuscarProductos(txtBuscar.Text);
            //    grdCategorias.DataBind();
            //}
            //else
            //{
            //    grdCategorias.DataSource = gProductos.TodosLosProductos();
            //    grdCategorias.DataBind();
            //}
        }
    }
}
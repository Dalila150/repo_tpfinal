using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["carrito"] != null)
            {
                GRDCARRITO.DataSource = (DataTable)Session["carrito"];
                GRDCARRITO.DataBind();
            }
            
        }
    }
}
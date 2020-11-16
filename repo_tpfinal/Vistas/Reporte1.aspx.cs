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
    public partial class Reporte1 : System.Web.UI.Page
    {
        NegocioProducto neg = new NegocioProducto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                var dateTime = DateTime.Now.Date;
                string F_Actual = Convert.ToString(dateTime.ToShortDateString());

                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte1_tex(F_Actual);
                grdRegistros.DataBind();
            }
        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdRegistros.PageIndex = e.NewPageIndex;
            grdRegistros.DataSource = neg.cargar_gridview_neg_reporte1_tex(txtFecha.Text);
            grdRegistros.DataBind();
        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            if (txtFecha.Text.Length != 0)
            {
                //ME TRAE EL DATATABLE CON LAS FECHAS INGRESADAS EN LOS TEXTBOXS
                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte1_tex(txtFecha.Text);
                grdRegistros.DataBind();
            }
            else
            {
                //SI LOS TEXTBOX ESTAN VACIOS MUESTRA UN LABEL QUE DIGA QUE INGRESE UN NUMERO POR FAVOR
                lbl_Mensaje.Text = "Ingrese un fecha por favor";
            }
        }
    }
}
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
    public partial class Reporte2 : System.Web.UI.Page
    {
        NegocioVenta neg = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                var dateTime = DateTime.Now.Date;
                string F_Actual = Convert.ToString(dateTime.ToShortDateString());

                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex("2000-01-01", F_Actual);
                grdRegistros.DataBind();

            }
        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            //VERIFICO QUE EL USUARIO HAYA ESCRITO ALGO
            if (txtFecha1.Text.Length != 0 && txtFecha2.Text.Length != 0)
            {
                DateTime d1 = Convert.ToDateTime(txtFecha1.Text);
                DateTime d2 = Convert.ToDateTime(txtFecha2.Text);
                //PREGUNTO SI LAS FECHAS SON IGUALES
                int res = DateTime.Compare(d1, d2);
                //PREGUNTO SI LA FECHA ES DISTINTO DE CERO, SI LO ES PUEDE TRAER EL DATABLE
                if (res != 0)
                {
                    //ME TRAE EL DATATABLE CON LAS FECHAS INGRESADAS EN LOS TEXTBOXS
                    grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex(txtFecha1.Text, txtFecha2.Text);
                    grdRegistros.DataBind();
                }

            }
            else
            {
                //SI LOS TEXTBOX ESTAN VACIOS MUESTRA UN LABEL QUE DIGA QUE INGRESE UN NUMERO POR FAVOR
                lbl_Mensaje.Text = "Ingrese un fecha por favor";
            }
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {

        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdRegistros.PageIndex = e.NewPageIndex;
            grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex(txtFecha1.Text, txtFecha2.Text);
            grdRegistros.DataBind();
        }
    }
}
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

                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex("01-01-2000",F_Actual);
                grdRegistros.DataBind();

            }
        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            //VERIFICO QUE EL USUARIO HAYA ESCRITO ALGO
            string aux1 = txtFecha1.Text.Trim();
            string aux2 = txtFecha2.Text.Trim();

            if (aux1.Length != 0 && aux2.Length != 0)
            {
                DateTime d1 = Convert.ToDateTime(txtFecha1.Text.Trim());
                DateTime d2 = Convert.ToDateTime(txtFecha2.Text.Trim());
                //PREGUNTO SI LAS FECHAS SON IGUALES
                int res = DateTime.Compare(d1, d2);
                //PREGUNTO SI LA FECHA ES DISTINTO DE CERO, SI LO ES PUEDE TRAER EL DATABLE
                if (res != 0)
                {
                    //ME TRAE EL DATATABLE CON LAS FECHAS INGRESADAS EN LOS TEXTBOXS
                    grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex(txtFecha1.Text, txtFecha2.Text);
                    grdRegistros.DataBind();
                    txtFecha1.Text = "";
                    txtFecha2.Text = "";
                }
            }
            else
            {
                //SI LOS TEXTBOX ESTAN VACIOS MUESTRA UN LABEL QUE DIGA QUE INGRESE UN NUMERO POR FAVOR
                lbl_Mensaje.Text = "Ingrese un fecha por favor";
                txtFecha1.Text = "";
                txtFecha2.Text = "";
            }
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAdmin.aspx");
        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (txtFecha1.Text.Length != 0 && txtFecha2.Text.Length != 0)
            {
                grdRegistros.PageIndex = e.NewPageIndex;
                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex(txtFecha1.Text, txtFecha2.Text);
                grdRegistros.DataBind();
            }
            else
            {
                grdRegistros.PageIndex = e.NewPageIndex;

                var dateTime = DateTime.Now.Date;
                string F_Actual = Convert.ToString(dateTime.ToShortDateString());
                grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex("01-01-2000", F_Actual);
                grdRegistros.DataBind();
            }
        }

        protected void btn_Limpiar_Click(object sender, EventArgs e)
        {
            var dateTime = DateTime.Now.Date;
            string F_Actual = Convert.ToString(dateTime.ToShortDateString());

            grdRegistros.DataSource = neg.cargar_gridview_neg_reporte2_tex("01-01-2000", F_Actual);
            grdRegistros.DataBind();
            txtFecha1.Text = "";
            txtFecha2.Text = "";
            lbl_Mensaje.Text = "";
        }
    }
}
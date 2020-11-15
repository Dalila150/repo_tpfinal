using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace Vistas
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        NegocioMarca neg = new NegocioMarca();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminarMarca_Click(object sender, EventArgs e)
        {
            if (txtNombreMarca.Text.Length != 0)
            {
                Boolean estado = false;
                estado = neg.eliminarMarcas_neg(txtNombreMarca.Text);
                if (estado == true)
                {
                    lblMensaje.Text = "Marca borrada con exito";
                }
                else
                {
                    lblMensaje.Text = "No se pudo borrar la marca";
                }
            }
            else
            {
                lblMensaje.Text = "Ingrese un Nombre por favor";
            }
        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAdmin.aspx");
        }
    }
}
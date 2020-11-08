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
            Boolean estado = false;
            estado = neg.eliminarMarcas_neg(txtNombreMarca.Text);
            if (estado == true)
            {
                lblMensaje.Text = "Marca borrada con exito";
            }
            else
            {
                lblMensaje.Text = "NO se pudo borrar la marca";
            }
        }
    }
}
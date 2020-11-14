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
    public partial class WebForm15 : System.Web.UI.Page
    {
        NegocioCategoria neg = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminarCate_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.eliminarCategoria(txtCategorias.Text);
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
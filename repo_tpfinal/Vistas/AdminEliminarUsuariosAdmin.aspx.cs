using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class AdminEliminarUsuariosAdmin : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminarCate_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.eliminarUsuarioAdmin_neg(txtEliminarAdministrador.Text);
            if (estado == true)
            {
                lblMensaje.Text = "Usuario Administrador borrada con exito";
            }
            else
            {
                lblMensaje.Text = "NO se pudo borrar el usuario Administrador";
            }
        }
    }
}
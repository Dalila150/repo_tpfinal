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

       

        protected void BtnEliminarUsuario_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.eliminarUsuarioAdmin_neg(txtEliminarAdministrador.Text);
            if (estado == true)
            {
                lblMensaje.Text = "El usuario fue dado de baja";
            }
            else
            {
                lblMensaje.Text = "Hubo un error al intentar dar de baja al usuario";
            }
        }
    }
}
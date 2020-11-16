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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int actualizo;
            Usuarios usur = new Usuarios();
            NegocioUsuario neg = new NegocioUsuario();

            usur.setNombreUsuario(txtNombre.Text);
            usur.setApellidoUsuario(txtApellido.Text);
            usur.setEmailUsuario(txtEmail.Text);
            usur.setDireccionUsuario(txtDireccion.Text);
            usur.setNombre_UsuarioUsuario(txtNombre_de_usuario.Text);
            usur.setPasswordUsuario(txtContrasena.Text);
            usur.setTelefonoUsuario(txtTelefono.Text);


            actualizo = neg.ActualizarUsuario(usur);

            if (actualizo == 1)
            {
                lblMensajedeActualizacion.Text = "Los datos del usuario fueron actualizados correctamente";
            }
            else
            {
                lblMensajedeActualizacion.Text = "Hubo un error al actualizar datos";
            }

        }
    }

}
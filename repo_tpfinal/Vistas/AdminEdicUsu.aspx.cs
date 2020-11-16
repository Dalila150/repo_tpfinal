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
            //-----------------------------------------------
            Usuarios Usu = new Usuarios();
            if (Request.Cookies["NombreUsuario"] != null)
            {

                if ((String)Session["tipo_usuario_logueado"] != null)
                {

                    if ((String)Session["tipo_usuario_logueado"] == "1")
                    {
                        String IconosInnerHTML = "";
                        Char B = '"';
                        IconosInnerHTML = "";
                        IconosInnerHTML += "<a href=" + B + "/Home.aspx?Sign-out=true" + B + " class=" + B + "fas fa-sign-out-alt" + B + " style=" + B + "font-size: 1.6rem;text-decoration: none;color: #40514e;" + B + " aria-hidden=" + B + "true" + B + "></a>";
                        IconoSalir.InnerHtml = IconosInnerHTML;
                    }
                    else
                    {
                        Response.Redirect("/IniciarSesion.aspx");
                    }
                }
                else
                {
                    Response.Redirect("/IniciarSesion.aspx");
                }

            }
            else
            {
                Response.Redirect("/Home.aspx");
            }
            //-----------------------------------------------

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
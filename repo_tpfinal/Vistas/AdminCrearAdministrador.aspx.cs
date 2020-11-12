using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            NegocioUsuario nuevo_usuario = new NegocioUsuario();
            Usuarios Datos_usuario = new Usuarios();

            Datos_usuario.setRolUsuario(int.Parse(txtRol.Text));
            Datos_usuario.setNombreUsuario(txtNombre.Text);
            Datos_usuario.setApellidoUsuario(txtApellido.Text);
            Datos_usuario.setEmailUsuario(txtEmail.Text);
            Datos_usuario.setDireccionUsuario(txtDireccion.Text);
            Datos_usuario.setNombre_UsuarioUsuario(txtNombre_de_Usuario.Text);
            Datos_usuario.setPasswordUsuario(txtContraseña.Text);
            Datos_usuario.setTelefonoUsuario(txtTelefono.Text);
            Datos_usuario.setDNIUsuario(txtDni.Text);

            bool existe = nuevo_usuario.CrearUsuario(Datos_usuario);

            if (existe == true)
            {
                lblUsuarioExiste.Text = "El usuario administrador ya se encuentra registrado";
            }

            else
            {
                lblUsuarioExiste.Text = "El usuario fue agregado con exito";
            }

            limpiar_campos();

            

        }

       public void limpiar_campos()
        {
            txtApellido.Text = "";
            txtContraseña.Text = "";
            txtNombre.Text = "";
            txtNombre_de_Usuario.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            txtDni.Text = "";


        }
    }
}
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
            //-----------------------------------------------
            Usuarios Usu = new Usuarios();
            if (Request.Cookies["NombreUsuario"] != null)
            {

                if (Request.Cookies["tipo_usuario_logueado"] != null)
                {

                    if (Request.Cookies["tipo_usuario_logueado"].Value == "1")
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


            if (IsPostBack==false)
            {
                ddlRol.Items.Add(new ListItem { Text = "Seleccione", Value = "" });
                ddlRol.Items.Add(new ListItem { Text = "Admin", Value = "1" });
                ddlRol.Items.Add(new ListItem { Text = "User", Value = "2" });
            }
        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            NegocioUsuario nuevo_usuario = new NegocioUsuario();
            Usuarios Datos_usuario = new Usuarios();

            Datos_usuario.setRolUsuario(int.Parse(ddlRol.SelectedValue));
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
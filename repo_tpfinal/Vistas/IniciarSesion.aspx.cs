using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {

            Boolean Usuario = false;
            Boolean Clave = false;
            lblMensaje.Text = "";

            if (txtUsuario.Text == "Admin" && txtContraseña.Text == "Admin")
            {
                HttpCookie Usu = new HttpCookie("NombreUsuario", txtUsuario.Text);
                Usu.Expires = DateTime.Now.AddDays(1);
                this.Response.Cookies.Add(Usu);
                HttpCookie Cla = new HttpCookie("NombreClave", txtContraseña.Text);
                Cla.Expires = DateTime.Now.AddHours(1);
                this.Response.Cookies.Add(Cla);
                Response.Redirect("Home.aspx");
            }

            if (txtUsuario.Text == "Admin")
            {
                Usuario = true;
            }
            if (txtContraseña.Text == "Admin")
            {
                Clave = true;
            }


            if (Usuario == false && Clave == false)
            {
                lblMensaje.Text = "El Usuario y la Contraseña son incorrectos";
            }
            if (Usuario == false && Clave == true)
            {
                lblMensaje.Text = "El Usuario Es incorrecto";
            }
            if (Usuario == true && Clave == false)
            {
                lblMensaje.Text = "La Contraseña Es incorrectas";
            }

        }
    }
}
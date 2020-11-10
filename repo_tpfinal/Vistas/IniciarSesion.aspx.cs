using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;


namespace Vistas
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Boolean Usuario = neg.BuscarUsuarioNombre_Usuario(txtUsuario.Text);
            Boolean Clave = neg.BuscarUsuarioPassword(txtContraseña.Text);
            lblMensaje.Text = "";

            if (neg.BuscarUsuarioYclave(txtUsuario.Text, txtContraseña.Text)== true)
            {
                HttpCookie Usu = new HttpCookie("NombreUsuario", txtUsuario.Text);
                Usu.Expires = DateTime.Now.AddDays(1);
                this.Response.Cookies.Add(Usu);
                HttpCookie Cla = new HttpCookie("NombreClave", txtContraseña.Text);
                Cla.Expires = DateTime.Now.AddHours(1);
                this.Response.Cookies.Add(Cla);
                Response.Redirect("Home.aspx");
            }

            if (Usuario == true)
            {
                if (Clave == false)
                {
                    lblMensaje.Text = "La Contraseña Es incorrectas";
                }
            }

            if (Usuario == false && Clave == false)
            {
                lblMensaje.Text = "El Usuario o la Contraseña son incorrectos";
            }

            if (Usuario == false && Clave == true)
            {
                lblMensaje.Text = "El Usuario Es incorrecto";
            }
            if (txtContraseña.Text == "" || txtUsuario.Text == "")
            {
                lblMensaje.Text = "Por favor complete todos los campos";
            }
        }
    }
}
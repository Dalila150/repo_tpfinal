using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            NegocioCategoria gC = new NegocioCategoria();
            DataTable cat = gC.ObtenerCategorias();
            String CategoriasUl = "";
            CategoriasUl += "<a href =";
            CategoriasUl += '"';
            CategoriasUl += "/Productos.aspx";
            CategoriasUl += '"';
            CategoriasUl += "> Categorias </a>";
            CategoriasUl += "<ul>";

            foreach (DataRow row in cat.Rows)
            {
                CategoriasUl += "<li>";
                String A = "<a href=";
                A += '"';
                A += "/Productos.aspx?Cat=" + row[1].ToString();
                A += '"';
                A += ">" + row[1].ToString() + "</a>";
                CategoriasUl += A;
                CategoriasUl += "</ li >";

            }

            CategoriasUl += "</ul>";
            CargameLasCats.InnerHtml = CategoriasUl;
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Boolean Usuario = neg.BuscarUsuarioNombre_Usuario(txtUsuario.Text);
            lblMensaje.Text = "";


            if (Usuario == true)
            {
                if (neg.BuscarUsuarioYclave(txtUsuario.Text, txtContraseña.Text) == true)
                {
                    HttpCookie Usu = new HttpCookie("NombreUsuario", txtUsuario.Text);
                    Usu.Expires = DateTime.Now.AddDays(1);
                    this.Response.Cookies.Add(Usu);
                    HttpCookie Cla = new HttpCookie("NombreClave", txtContraseña.Text);
                    Cla.Expires = DateTime.Now.AddHours(1);
                    this.Response.Cookies.Add(Cla);
                    Response.Redirect("Home.aspx");
                }
                lblMensaje.Text = "La Contraseña Es incorrectas";
            }

            else
            {
                lblMensaje.Text = "El Usuario Es incorrecto";
            }
            if (txtContraseña.Text == "" || txtUsuario.Text == "")
            {
                lblMensaje.Text = "Por favor complete todos los campos";
            }
        }

        protected void btnIniciarRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            nameValues.Set("Busqueda", txtBuscar.Text);
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect("/productos.aspx" + updatedQueryString);
        }
    }
}
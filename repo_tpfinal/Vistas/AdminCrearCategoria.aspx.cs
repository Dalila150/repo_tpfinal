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
    public partial class AdminCrearCategoria : System.Web.UI.Page
    {
        NegocioCategoria negcat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            // btnAgregarCategoria.Click += new EventHandler(btnAgregarCategoria_Click);
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

        protected void BtnCrearCate_Click(object sender, EventArgs e)
        {


            if (txtCategoria.Text.Trim()!="")
            {
                bool existe = false;
                existe = negcat.agregarCategoria(txtCategoria.Text);

                if (existe == true) //existe = si se guardo o no
                {
                    lblMensaje.Text = "Categoria agregada con exito la categoria: "+ txtCategoria.Text ;
                    txtCategoria.Text = "";
                }
                else
                {
                    lblMensaje.Text = "No se pudo agregar la categoria. (Esta ya existe).";
                }
            }
            else
            {
                lblMensaje.Text = "Usted no ha ingresado ninguna categoria aun.";
            }
            

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            txtCategoria.Text = "";
           
        }
    }
}
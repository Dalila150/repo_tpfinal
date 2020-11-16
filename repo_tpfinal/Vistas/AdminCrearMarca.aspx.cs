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
    public partial class WebForm10 : System.Web.UI.Page
    {

        NegocioMarca neg = new NegocioMarca();

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

        protected void btn_Crear_Marca_Click(object sender, EventArgs e)
        {
            if (txt_Nombre_Marca.Text.Length != 0)
            {
                Boolean estado = false;
                estado = neg.agregarMarcas_neg(txt_Nombre_Marca.Text);
                if (estado == true)
                {
                    lbl_Mensaje.Text = "Marcas agregada con exito";
                }
                else
                {
                    lbl_Mensaje.Text = "No se pudo agregar la marca";
                }
            }
            else
            {
                lbl_Mensaje.Text = "Ingrese un Nombre por favor";
            }
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminListMarcas.aspx");
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class AdminEliminarUsuariosAdmin : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
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
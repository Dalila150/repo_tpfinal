﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class AdminDetalleVenta : System.Web.UI.Page
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



            //recibe el parametro de Ventas.aspx
            String idV;
            idV = Request.QueryString["idVenta"];

            lblMensaje.Text = " Id Venta: " +idV;

            cargarGridView(Convert.ToInt32(idV));

        }

        public void cargarGridView(int idV)
        {
            NegocioVenta gVenta = new NegocioVenta();

            grdRegistros.DataSource = gVenta.TodosDetallesVentas(idV);
            grdRegistros.DataBind();
        }

        protected void grdRegistros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            String idV;
            idV = Request.QueryString["idVenta"];
            grdRegistros.PageIndex = e.NewPageIndex;
            cargarGridView(Convert.ToInt32(idV));
        }
    }
}
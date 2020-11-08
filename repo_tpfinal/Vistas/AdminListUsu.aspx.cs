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
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tablaUsuario = neg.getTabla();
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Variable = 0;

            bool Nom = false;
            Boolean estado = neg.BuscarUsuarioNombre(txtBuscar.Text);
            
            if (estado == true && Variable != 1)
            {
                DataTable tablaUsuario = neg.getTablaBuscar(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
                Nom = true;
            }
            if (estado == false && Variable != 1)
            {
                lblMensaje.Text = "El Nombre o Apellido no se encuentra en la Base de datos";
            }

            //----------------------------------------------------------------
            int Variable2 = 0;
            Boolean estado2 = neg.BuscarUsuarioApellido(txtBuscar.Text);
           
            if (estado2 == true && Variable2 != 1)
            {
                DataTable tablaUsuario = neg.getTablaBuscarApellido(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }
            if (estado2 == false && Variable2 != 1 && Nom == false)
            {
                lblMensaje.Text = "El Nombre o Apellido no se encuentra en la Base de datos";
            }
            if (txtBuscar.Text == "")
            {
                DataTable tablaUsuario = neg.getTabla();
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                Variable = 1;
                lblMensaje.Text = " ";
            }

        }

        protected void grdUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdUsuarios.PageIndex = e.NewPageIndex;
            DataTable tablaUsuario = neg.getTabla();
            grdUsuarios.DataSource = tablaUsuario;
            grdUsuarios.DataBind();
        }
    }
}
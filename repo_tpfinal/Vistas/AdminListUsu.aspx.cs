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
            Boolean estadoNombre = neg.BuscarUsuarioNombre(txtBuscar.Text);
            lblMensaje.Text = " ";
            if (txtBuscar.Text == "")
            {
                DataTable tablaUsuario = neg.getTabla();
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (estadoNombre == true && txtBuscar.Text != "")
            {
                DataTable tablaUsuario = neg.getTablaBuscarNombre(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (txtBuscar.Text != "" && estadoNombre == false)
            {
                DataTable tablaUsuario = neg.getTablaBuscarNombre(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (grdUsuarios.Rows.Count == 0)
            {
                lblMensaje.Text = "El Nombre no se encuentran en la base de datos ";
            }

        }

        protected void grdUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdUsuarios.PageIndex = e.NewPageIndex;
            DataTable tablaUsuario = neg.getTabla();
            grdUsuarios.DataSource = tablaUsuario;
            grdUsuarios.DataBind();
        }

        protected void btnBuscarApellido_Click(object sender, EventArgs e)
        {
            Boolean estadoApellido = neg.BuscarUsuarioApellido(txtBuscar.Text);
            lblMensaje.Text = " ";

            if (txtBuscar.Text == "")
            {
                DataTable tablaUsuario = neg.getTabla();
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (estadoApellido == true && txtBuscar.Text != "")
            {
                DataTable tablaUsuario = neg.getTablaBuscarApellido(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (txtBuscar.Text != "" && estadoApellido == false)
            {
                DataTable tablaUsuario = neg.getTablaBuscarApellido(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }

            if (grdUsuarios.Rows.Count == 0)
            {
                lblMensaje.Text = "El Apellido no se encuentran en la base de datos ";
            }
        }
    }
}
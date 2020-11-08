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
            Boolean estado = neg.BuscarUsuarioNombre(txtBuscar.Text);
            if (txtBuscar.Text == "")
            {
                DataTable tablaUsuario = neg.getTabla();
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                Variable = 1;
                lblMensaje.Text = " ";
            }
            if (estado == true && Variable != 1)
            {
                DataTable tablaUsuario = neg.getTablaBuscar(txtBuscar.Text);
                grdUsuarios.DataSource = tablaUsuario;
                grdUsuarios.DataBind();
                lblMensaje.Text = " ";
            }
            if (estado == false && Variable != 1)
            {
                lblMensaje.Text = "El nombre no existe en la base de datos";
            }
        }
    }
}
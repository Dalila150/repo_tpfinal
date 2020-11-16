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
    public partial class ComprasUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["NombreUsuario"] != null)
            {
                HttpCookie ck = Request.Cookies["NombreUsuario"];
            }
            cargarGridView();
            if (IsPostBack == false)
            {
                cargarGridView();
            }
        }

        protected void CargarCategoriasBarraDeNavegacion()
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
        public void cargarGridView()
        {

             NegocioVenta NegV = new NegocioVenta();
            grdVentasUsuarios.DataSource = NegV.TodasLasVentasUsuario(Request.Cookies["NombreUsuario"].Value);
            grdVentasUsuarios.DataBind();
        }

        protected void grdVentasUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ID_DetalleVenta"] = grdVentasUsuarios.SelectedRow.Cells[1].Text;
            Response.Redirect("DetalleVenta.aspx");
        }
    }
}
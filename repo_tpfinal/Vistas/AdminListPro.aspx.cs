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
    public partial class AdminListPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                cargarGridView();
            }

        }

        public void cargarGridView()
        {
            NegocioProducto gProductos = new NegocioProducto();
            grdProductos.DataSource = gProductos.TodosLosProductos();
            grdProductos.DataBind();
        }


        protected void grdProductos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //creo y asigno variable session|| del grd la fila que este seleccionada busco el lblid y saco la prop txt
            Session["id_producto_modif"] = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblId")).Text;
            Response.Redirect("AdminEdicPro.aspx");
        }

        protected void grdProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //busco el id
            String s_Nombre = ((Label)grdProductos.Rows[e.RowIndex].FindControl("lblId")).Text;

            Producto prod = new Producto();
            prod.Id_producto = Convert.ToInt32(s_Nombre);//string a int

            NegocioProducto gProducto = new NegocioProducto();
            gProducto.EliminarProducto(prod);

            cargarGridView();
        }

        //protected void btnCrearProducto_Click(object sender, EventArgs e)
        //{
            
        //    Response.Redirect("AdminCrearPro.aspx");
        //}


        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            NegocioProducto gProductos = new NegocioProducto();

            if (txtBuscar.Text != "")
            {
                grdProductos.DataSource = gProductos.BuscarProductos(txtBuscar.Text);
                grdProductos.DataBind();
            }
            else
            {
                grdProductos.DataSource = gProductos.TodosLosProductos();
                grdProductos.DataBind();
            }
        }

        protected void grdProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdProductos.PageIndex = e.NewPageIndex;
            cargarGridView();
        }

        protected void grdProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    String estadoCelda = ((Label)(e.Row.Cells[5].FindControl("lblEstado"))).Text;
                    if (estadoCelda == "1")
                    {
                        estadoCelda = "Activo";
                    }
                    if (estadoCelda == "0")
                    {
                        estadoCelda = "Inactivo";
                    }
                    ((Label)(e.Row.Cells[5].FindControl("lblEstado"))).Text = estadoCelda;
            }
            
        }
    }
}
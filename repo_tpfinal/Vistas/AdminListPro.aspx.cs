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
            String InnerHTML = "";

            if (IsPostBack == false)
            {
                cargarGridView();
            }

            string cadenaResultado = Request["EdPro"];

            if(cadenaResultado == "true")
            {
                InnerHTML = CargarInnerHTML("ok");
            } else if (cadenaResultado == "false")
            {
                InnerHTML = CargarInnerHTML("error");
            }
            else if (cadenaResultado == "none")
            {
                InnerHTML = CargarInnerHTML("none");
            }

            cadenaResultado = Request["NewPro"];

            if (cadenaResultado == "true")
            {
                InnerHTML = CargarInnerHTML2("ok");
            }
            else if (cadenaResultado == "error")
            {
                InnerHTML = CargarInnerHTML2("error");
            }
            else if (cadenaResultado == "none")
            {
                InnerHTML = CargarInnerHTML2("none");
            }

            AcaVaLaAlerta.InnerHtml = InnerHTML;

        }

        public void cargarGridView()
        {
            NegocioProducto gProductos = new NegocioProducto();
            grdProductos.DataSource = gProductos.TodosLosProductos();
            grdProductos.DataBind();
        }

        protected String CargarInnerHTML(String Tipo)
        {
            String InnerHTML = "";
            String Color = "";
            String Mensaje = "";

            switch (Tipo)
            {
                case "ok":
                    Mensaje = "Producto modificado correctamente.";
                    Color = "color: #155724;background-color: #d4edda;border-color: #c3e6cb;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
                case "error":
                    Mensaje = "Se produjo un error al modificar el producto.";
                    Color = "color: #721c24;background-color: #f8d7da;border-color: #f5c6cb;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
                case "none":
                    Mensaje = "Primero Seleccione un producto.";
                    Color = "color: #856404;background-color: #fff3cd;border-color: #ffeeba;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
            }

            Char A = '"';
            InnerHTML += "<ul style=" + A + Color + ";padding: 0.5rem;" + A + " >";
            InnerHTML += "<li style=" + A + "display: list-item;" + A + " >" + Mensaje + "</li>";
            InnerHTML += "</ul>";

            return InnerHTML;
        }

        protected String CargarInnerHTML2(String Tipo)
        {
            String InnerHTML = "";
            String Color = "";
            String Mensaje = "";

            switch (Tipo)
            {
                case "ok":
                    Mensaje = "Producto creado correctamente.";
                    Color = "color: #155724;background-color: #d4edda;border-color: #c3e6cb;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
                case "error":
                    Mensaje = "Se produjo un error al crear el producto.";
                    Color = "color: #721c24;background-color: #f8d7da;border-color: #f5c6cb;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
                case "none":
                    Mensaje = "Primero Seleccione un producto.";
                    Color = "color: #856404;background-color: #fff3cd;border-color: #ffeeba;border-radius:8px;list-style: unset;height:35px;font-size:25px";
                    break;
            }

            Char A = '"';
            InnerHTML += "<ul style=" + A + Color + ";padding: 0.5rem;" + A + " >";
            InnerHTML += "<li style=" + A + "display: list-item;" + A + " >" + Mensaje + "</li>";
            InnerHTML += "</ul>";

            return InnerHTML;
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
                        LinkButton lbtnDelete = (LinkButton)e.Row.FindControl("DeleteButton");
                        lbtnDelete.Text = "Activar";
                        lbtnDelete.CommandName = "Update";
                        lbtnDelete.OnClientClick = "return confirm('¿Esta seguro de activar este producto?','Activar Producto');";
                    }
                    ((Label)(e.Row.Cells[5].FindControl("lblEstado"))).Text = estadoCelda;
            }
            
        }

        protected void grdProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_Nombre = ((Label)grdProductos.Rows[e.RowIndex].FindControl("lblId")).Text;

            Producto prod = new Producto();
            prod.Id_producto = Convert.ToInt32(s_Nombre);//string a int

            NegocioProducto gProducto = new NegocioProducto();
            gProducto.ActivarProducto(prod);

            cargarGridView();
        }

        protected void btnCrearProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCrearPro.aspx");
        }
    }
}
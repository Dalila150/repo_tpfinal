﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class AdminEdicPro : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //pregunto si selecciono un prod de la pagina
                if ((String)Session["id_producto_modif"] != null)
                {
                    //--------------------DropDownList--------------
                    DataTable dt_Cat = new DataTable();
                    DataTable dt_Mar = new DataTable();

                    NegocioProducto Gp = new NegocioProducto();

                    dt_Cat = Gp.ObtenerCategorias();
                    dt_Mar = Gp.ObtenerMarcas();

                    //recorro cada fila que me devuelve obtener categoria
                    foreach (DataRow row in dt_Cat.Rows)
                    {
                        ListItem li_Cat = new ListItem();
                        li_Cat.Value = row[0].ToString();
                        li_Cat.Text = row[1].ToString();
                        ddCategoria.Items.Add(li_Cat);
                        //new ListItem { Text = row[1].ToString(), Value = row[0].ToString() }
                    }
                    foreach (DataRow row in dt_Mar.Rows)
                    {
                        ddMarca.Items.Add(new ListItem { Text = row[1].ToString(), Value = row[0].ToString() });
                    }
                    //Valores fijos----------------
                    ddEstado.Items.Add(new ListItem { Text = "Activo", Value = "1" });
                    ddEstado.Items.Add(new ListItem { Text = "Inactivo", Value = "0" });
                    //-----------------------------------------------

                    DataTable dt_Pro = new DataTable();

                    //traigo los datos del producto para que aparezcan cargados en los campos
                    dt_Pro = Gp.ObtenerProducto((String)Session["id_producto_modif"]);

                    //dentro del campo agrego el valor de la columna correspondiente
                    txtModelo.Text = dt_Pro.Rows[0][6].ToString();
                    txtPrecio.Text = dt_Pro.Rows[0][3].ToString();
                    txtDescripcion.Text = dt_Pro.Rows[0][8].ToString();
                    txtStock.Text = dt_Pro.Rows[0][1].ToString();
                    ddEstado.SelectedValue = dt_Pro.Rows[0][5].ToString();
                    ddCategoria.SelectedValue = dt_Pro.Rows[0][4].ToString();
                    ddMarca.SelectedValue = dt_Pro.Rows[0][2].ToString();
                }
                else
                {
                    Response.Redirect("AdminListPro.aspx?EdPro=none");
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //System.Diagnostics.Debug.WriteLine("Popito");
            NegocioProducto gProducto = new NegocioProducto();
            Producto prod_a_guardar = new Producto();

            int id_prod_guardar;
            int stock_prod_guardar;
            int marca_prod_guardar;
            decimal preciou_prod_guardar;
            int categoria_prod_guardar;
            int estado_prod_guardar;

            int.TryParse(Session["id_producto_modif"].ToString(), out id_prod_guardar);
            int.TryParse(txtStock.Text, out stock_prod_guardar);
            int.TryParse(ddMarca.SelectedValue, out marca_prod_guardar);
            decimal.TryParse(txtPrecio.Text, out preciou_prod_guardar);
            int.TryParse(ddCategoria.SelectedValue, out categoria_prod_guardar);
            int.TryParse(ddEstado.SelectedValue, out estado_prod_guardar);

            prod_a_guardar.Id_producto = id_prod_guardar;
            prod_a_guardar.Stock1 = stock_prod_guardar;
            prod_a_guardar.ID_marca1 = marca_prod_guardar;
            prod_a_guardar.Precio_unitario1 = preciou_prod_guardar;
            prod_a_guardar.ID_categoria1 = categoria_prod_guardar;
            prod_a_guardar.Estado1 = estado_prod_guardar;
            prod_a_guardar.Nombre1 = txtModelo.Text;
            prod_a_guardar.Imagen1 = "";
            prod_a_guardar.Descripcion1 = txtDescripcion.Text;

            //System.Diagnostics.Debug.WriteLine("");

            if (gProducto.ActualizarProducto(prod_a_guardar))
            {

                Session["id_producto_modif"] = null;
                Response.Redirect("AdminListPro.aspx?EdPro=true");

            }
            else
            {

                Session["id_producto_modif"] = null;
                Response.Redirect("AdminListPro.aspx?EdPro=false");

            }
        }

        protected void btnCancelar_click(object sender, EventArgs e)
        {
            Session["id_producto_modif"] = null;
            Response.Redirect("AdminListPro.aspx?EdPro=false");
        }
    }
}
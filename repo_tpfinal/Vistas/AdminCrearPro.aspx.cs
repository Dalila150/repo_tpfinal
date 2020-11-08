﻿using System;
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
    public partial class AdminCrearPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // txtModelo.Text = (String)Session["id_producto_modif"];
                //--------------------DropDownList--------------
                DataTable dt_Cat = new DataTable();
                DataTable dt_Mar = new DataTable();

                NegocioProducto Gp = new NegocioProducto();

                dt_Cat = Gp.ObtenerCategorias();
                dt_Mar = Gp.ObtenerMarcas();

                ddCategoria.Items.Add(new ListItem { Text = "Seleccione", Value = "" });
                ddMarca.Items.Add(new ListItem { Text = "Seleccione", Value = "" });

                foreach (DataRow row in dt_Cat.Rows)
                {
                    ddCategoria.Items.Add(new ListItem { Text = row[1].ToString(), Value = row[0].ToString() });
                }
                foreach (DataRow row in dt_Mar.Rows)
                {
                    ddMarca.Items.Add(new ListItem { Text = row[1].ToString(), Value = row[0].ToString() });
                }
                //valores fijos
                ddEstado.Items.Add(new ListItem { Text = "Activo", Value = "1" });
                ddEstado.Items.Add(new ListItem { Text = "Inactivo", Value = "0" });
                ddEstado.SelectedValue = "1";

            }
        }

        //public void MsgBox(String ex, Page pg, Object obj)
        //{
        //    string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
        //    Type cstype = obj.GetType();
        //    ClientScriptManager cs = pg.ClientScript;
        //    cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        //}


        protected void btnCancelar_click(object sender, EventArgs e)
        {
            Response.Redirect("AdminListPro.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //MsgBox("HOLA", this.Page, this);
            //System.Diagnostics.Debug.WriteLine("HOLA2");
            NegocioProducto gProducto = new NegocioProducto();
            Producto prod_a_guardar = new Producto();

            int stock_prod_guardar;
            int marca_prod_guardar;
            decimal preciou_prod_guardar;
            int categoria_prod_guardar;
            int estado_prod_guardar;

            int.TryParse(txtStock.Text, out stock_prod_guardar);
            int.TryParse(ddMarca.SelectedValue, out marca_prod_guardar);
            decimal.TryParse(txtPrecio.Text, out preciou_prod_guardar);
            int.TryParse(ddCategoria.SelectedValue, out categoria_prod_guardar);
            int.TryParse(ddEstado.SelectedValue, out estado_prod_guardar);

            prod_a_guardar.Stock1 = stock_prod_guardar;
            prod_a_guardar.ID_marca1 = marca_prod_guardar;
            prod_a_guardar.Precio_unitario1 = preciou_prod_guardar;
            prod_a_guardar.ID_categoria1 = categoria_prod_guardar;
            prod_a_guardar.Estado1 = estado_prod_guardar;
            prod_a_guardar.Nombre1 = txtModelo.Text;
            prod_a_guardar.Imagen1 = "";
            prod_a_guardar.Descripcion1 = txtDescripcion.Text;

            //System.Diagnostics.Debug.WriteLine("");

            if (gProducto.CrearProducto(prod_a_guardar))
            {

                Response.Redirect("AdminListPro.aspx?NewPro=true");

            }
            else
            {

                Response.Redirect("AdminListPro.aspx?NewPro=false");

            }
        }

      
    }
}
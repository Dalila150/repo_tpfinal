﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // CATEGORIAS DEL NAVBAR
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
            
            // CATEGORIAS BANNERS INFERIORES
            String InnerHTML = "";
            DataTable infoCat = new DataTable();
            infoCat = gC.ObtenerCategorias();

            foreach (DataRow row in infoCat.Rows)
            {
                String A = "<a class='img' href=";
                A += '"';
                A += "/Productos.aspx?Cat=" + row[1].ToString();
                A += '"';
                A += " style='background: url(" + row[3].ToString() + ") no-repeat center;background-size: cover;'";
                A += '>';
                InnerHTML += A;
                InnerHTML += "<label class='lbl'>" + row[1].ToString() + "</label>";
                InnerHTML += "</a>";
            }

            CategoriasSpace.InnerHtml = InnerHTML;
        }
    }
}
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
    public partial class AdminCrearCategoria : System.Web.UI.Page
    {
        NegocioCategoria negcat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
           // btnAgregarCategoria.Click += new EventHandler(btnAgregarCategoria_Click);
        }

        protected void BtnCrearCate_Click(object sender, EventArgs e)
        {
            bool existe = false;
            existe = negcat.agregarCategoria(txtCategoria.Text);

            if (existe == true)
            {
                lblMensaje.Text = "Marcas agregada con exito";
            }
            else
            {
                lblMensaje.Text = "No se pudo agregar la marca";
            }

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            txtCategoria.Text = "";
           
        }
    }
}
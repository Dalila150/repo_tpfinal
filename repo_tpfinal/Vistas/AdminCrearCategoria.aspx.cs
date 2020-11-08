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
        negocioCategorias negcat = new negocioCategorias();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnAgregarCategoria.Click += new EventHandler(btnAgregarCategoria_Click);
        }

        
    }
}
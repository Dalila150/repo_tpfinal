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
    public partial class WebForm10 : System.Web.UI.Page
    {

        NegocioMarca neg = new NegocioMarca();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Crear_Marca_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.agregarMarcas_neg(txt_Nombre_Marca.Text);
            if (estado == true)
            {
                lbl_Mensaje.Text = "Marcas agregada con exito";
            }
            else
            {
                lbl_Mensaje.Text = "No se pudo agregar la marca";
            }
        }
    }
}
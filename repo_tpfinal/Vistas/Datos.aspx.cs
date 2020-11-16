using System;
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
    public partial class WebForm7 : System.Web.UI.Page
    {
        NegocioUsuario Neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            //-----------------------------------------------
            Usuarios Usu = new Usuarios();
            // COMPRUEBO SI HAY ALGUIEN LOGUEADO
            if (Request.Cookies["NombreUsuario"] != null)
            {
                HttpCookie ck = Request.Cookies["NombreUsuario"];

                // MEDIANTE EL USUARIO DE LAS COOKIES OBTENGO INFORMACION COMO EL NOMBRE Y APELLIDO
                Usu = Neg.DevolverUsuarioCompleto(Request.Cookies["NombreUsuario"].Value);

                String IconosInnerHTML = "";
                Char A = '"';

                if ((String)Session["tipo_usuario_logueado"] != null)
                {
                    //SI ES ROL ADMIN
                    if ((String)Session["tipo_usuario_logueado"] == "1")
                    {
                        //CORONITA
                        IconosInnerHTML += "<a href=" + A + "/HomeAdmin.aspx" + A + " class=" + A + "fas fa-crown" + A + " style=" + A + "font-size: 1.6rem;text-decoration: none;color: #40514e;" + A + " aria-hidden=" + A + "true" + A + "></a>";
                        accesoAdmin.InnerHtml = IconosInnerHTML;
                        IconosInnerHTML = "";
                    }
                }

                //BOTONES DE USUARIO COMUN
                IconosInnerHTML += "<a href=" + A + "/Datos.aspx" + A + " class=" + A + "fas fa-user user" + A + " style=" + A + "text-decoration: none;" + A + "><div id = 'UsuarioLogueadoNombre' runat='server' style='font-size:20px;'>" + Usu.getNombreUsuario() + "</div><div id = 'UsuarioLogueadoApellido' runat='server' style='font-size:20px;'>" + Usu.getApellidoUsuario() + "</div></a>";
                infoUser.InnerHtml = IconosInnerHTML;
                IconosInnerHTML = "";
                // FLECHA PARA DESLOGUEAR
                IconosInnerHTML += "<a href=" + A + "/Home.aspx?Sign-out=true" + A + " class=" + A + "fas fa-sign-out-alt" + A + " style=" + A + "font-size: 1.6rem;text-decoration: none;color: #40514e;" + A + " aria-hidden=" + A + "true" + A + "></a>";
                IconoSalir.InnerHtml = IconosInnerHTML;
            }
            else
            {
                Response.Redirect("/Registro.aspx");
            }
            //-----------------------------------------------


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

            // SI HAY CARGO DATOS DEL CARRO
            if (Session["Carrito"] != null)
            {
                String InnerHTML = "";
                DataTable infoCarrito = (DataTable)Session["Carrito"];
                int TotalCarro = 0;
                int CantProds = 0;

                foreach (DataRow row in infoCarrito.Rows)
                {
                    CantProds += int.Parse(row[1].ToString());
                    TotalCarro += CantProds * int.Parse(row[2].ToString());
                }

                InnerHTML += TotalCarro + "(" + CantProds + ")";
                datosCarrito.InnerHtml = InnerHTML;
            }
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            var nameValues = HttpUtility.ParseQueryString(Request.QueryString.ToString());
            nameValues.Set("Busqueda", txtBuscar.Text);
            string url = Request.Url.AbsolutePath;
            string updatedQueryString = "?" + nameValues.ToString();

            Response.Redirect("/productos.aspx" + updatedQueryString);
        }


    }
}
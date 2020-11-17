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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //-----------------------------------------------
            Usuarios Usu = new Usuarios();
            NegocioUsuario neg = new NegocioUsuario();




            if (IsPostBack == false)
            {
                DataTable usuariocampos = neg.llenarcamposusuarios(int.Parse(txtIdUsuario.Text));

                string nombre = usuariocampos.Rows[0]["Nombre"].ToString();
                string apellido = usuariocampos.Rows[0]["Apellido"].ToString();
                string email = usuariocampos.Rows[0]["Email"].ToString();
                string direccion = usuariocampos.Rows[0]["Direccion"].ToString();
                string nickname = usuariocampos.Rows[0]["Nombre_Usuario"].ToString();
                string telefono = usuariocampos.Rows[0]["Telefono"].ToString();

                txtNombre.Text = nombre;
                txtApellido.Text = apellido;
                txtEmail.Text = email;
                txtDireccion.Text = direccion;
                txtNombredeUsuario.Text = nickname;
                txtTelefono.Text = telefono;
            }
         

            if (Request.Cookies["NombreUsuario"] != null)
            {

                if (Request.Cookies["tipo_usuario_logueado"] != null)
                {

                    if (Request.Cookies["tipo_usuario_logueado"].Value == "1")
                    {
                        String IconosInnerHTML = "";
                        Char B = '"';
                        IconosInnerHTML = "";
                        IconosInnerHTML += "<a href=" + B + "/Home.aspx?Sign-out=true" + B + " class=" + B + "fas fa-sign-out-alt" + B + " style=" + B + "font-size: 1.6rem;text-decoration: none;color: #40514e;" + B + " aria-hidden=" + B + "true" + B + "></a>";
                        IconoSalir.InnerHtml = IconosInnerHTML;
                    }
                    else
                    {
                        Response.Redirect("/IniciarSesion.aspx");
                    }
                }
                else
                {
                    Response.Redirect("/IniciarSesion.aspx");
                }

            }
            else
            {
                Response.Redirect("/Home.aspx");
            }
            //-----------------------------------------------
          //  if (IsPostBack == false) { txtNombre.Text = Session["Nombre"].ToString(); txtNombre_de_usuario.Text = Session["Usuario"].ToString(); txtApellido.Text = Session["Apellido"].ToString(); txtContrasena.Text = Session["Contraseña"].ToString(); txtEmail.Text = Session["Email"].ToString(); txtTelefono.Text = Session["Telefono"].ToString(); txtDireccion.Text = Session["DireccionUsuario"].ToString(); }

        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int actualizo;
            Usuarios usur = new Usuarios();
            NegocioUsuario neg = new NegocioUsuario();

            usur.setNombreUsuario(txtNombre.Text);
            usur.setApellidoUsuario(txtApellido.Text);
            usur.setEmailUsuario(txtEmail.Text);
            usur.setDireccionUsuario(txtDireccion.Text);
            usur.setNombre_UsuarioUsuario(txtNombredeUsuario.Text);
          
            usur.setTelefonoUsuario(txtTelefono.Text);


            actualizo = neg.ActualizarUsuario(usur);

            if (actualizo == 1)
            {
                lblMensajedeActualizacion.Text = "Los datos del usuario fueron actualizados correctamente";
            }
            else
            {
                lblMensajedeActualizacion.Text = "Hubo un error al actualizar datos";
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAdmin.aspx");
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }

}
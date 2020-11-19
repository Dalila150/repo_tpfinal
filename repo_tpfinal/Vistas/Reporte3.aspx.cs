using System;
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
    public partial class Reporte3 : System.Web.UI.Page
    {
        public String Consulta = "";
        public String Order = "";
        NegocioVenta nv = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            // FALTA VALIDAR USUARIO E ICONOS




            //-------------------------------

            // BUSCO PARAMETROS EN LA URL
            // FECHA INICIAL
            // Supongo que si hay dia hay los otros valores
            if (Request["Indd"] != null)
            {
                // pero por las dudas busco todo XD
                if (Request["Inmm"] != null)
                {
                    if (Request["Inyy"] != null)
                    {
                        // LE SETEO EL VALOR AL DATEPICKER SI YA TENIA...
                        datepickerInicial.Value = Request["Indd"].ToString() + "/" + Request["Inmm"].ToString() + "/" + Request["Inyy"].ToString();
                        Consulta += " AND Fecha >= '" + Request["Inyy"].ToString() + "-" + Request["Inmm"].ToString() + "-" + Request["Indd"].ToString() + "'";
                    }

                }

            }

            // FECHA FINAL
            if (Request["Findd"] != null)
            {
                // pero por las dudas busco todo XD
                if (Request["Finmm"] != null)
                {
                    if (Request["Finyy"] != null)
                    {
                        // LE SETEO EL VALOR AL DATEPICKER SI YA TENIA...
                        datepickerFinal.Value = Request["Findd"].ToString() + "/" + Request["Finmm"].ToString() + "/" + Request["Finyy"].ToString();
                        Consulta += " AND Fecha <= '" + Request["Finyy"].ToString() + "-" + Request["Finmm"].ToString() + "-" + Request["Findd"].ToString() + "'";
                    }

                }

            }

            // PRECIO
            if (Request["Precio"] != null)
            {
                if (Request["Precio"].ToString() == "Mayor")
                {
                    Mayor.Checked = true;
                    Order += " order by Total desc";
                }
                else if (Request["Precio"].ToString() == "Menor")
                {
                    Menor.Checked = true;
                    Order += " order by Total asc";
                }
                else
                {
                    NoFilter.Checked = true;
                }
            }
            else
            {
                NoFilter.Checked = true;
            }

            grdVentas.DataSource = nv.ConsultaParaReporte3(Consulta,Order);
            grdVentas.DataBind();

            if(grdVentas.Rows.Count == 0)
            {
                NOHAYVENTAS.Text = "No se encontraron ventas para los filtros solicitados";
                NOHAYVENTAS.Visible = true;
            } else
            {
                NOHAYVENTAS.Visible = false;
            }


        }

        protected void grdVentas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdVentas.PageIndex = e.NewPageIndex;
            grdVentas.DataSource = nv.ConsultaParaReporte3(Consulta, Order);
            grdVentas.DataBind();
        }
    }
}
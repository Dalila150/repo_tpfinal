﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;


namespace Negocio
{
    public class NegocioVenta
    {
        DaoVentas dv = new DaoVentas();

        public bool Registro_de_Venta (Ventas ven)

        {
            int registro_exitoso = dv.Registrar_Venta(ven);

            if (registro_exitoso == 1)
            {
                return true;
            }
            else
            {
                return false;
            }


        }


       public DataTable traerid_venta()
        {
            DaoVentas dv = new DaoVentas();

            return dv.id_ultimaventa();
        }

        public DataTable ListadoSucursales()
        {
            DaoSucursales daosuc = new DaoSucursales();
            return daosuc.ObtenerTodasLasSucursales();
        }

        public DataTable TodasLasVentas()
        {
            DaoVentas dp = new DaoVentas();
            return dp.ObtenerTodasLasVentas();
        }

        public DataTable TodasLasVentasUsuario(string Nombre)
        {
            DaoVentas dp = new DaoVentas();
            return dp.ObtenerTodasLasVentasUsuario(Nombre);
        }

        public DataTable DetallesVentasUsuario(int idDetV)
        {
            DaoVentas dp = new DaoVentas();
            return dp.ObtenerDetallesVentasUsuario(idDetV);
        }

        public DataTable cargar_gridview_neg_reporte2_tex(string fecha1, string fecha2)
        {
            DaoVentas dp = new DaoVentas();
            return dp.ObtenerTodasLasVentasPorFecha(fecha1, fecha2);
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data.SqlClient;
using System.Data;

namespace Dao
{
   public class DaoVentas
    {
        AccesoaDatos acceder = new AccesoaDatos();


        public int Registrar_Venta(Ventas vent)
        {
            SqlCommand comando = new SqlCommand();

            ParametrosRegistroVentas(ref comando, vent);

            return acceder.EjecutarProcedimientoAlmacenado(comando, "spRegistrarVenta");
        }


        private void ParametrosRegistroVentas(ref SqlCommand comando, Ventas ven)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = comando.Parameters.Add("@ID_VENTA", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@FECHAVENTA", SqlDbType.DateTime);
            SqlParametros.Value = ven.Fecha1;
            SqlParametros = comando.Parameters.Add("@ID_USUARIO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@TOTAL", SqlDbType.Float);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@MODO_ENVIO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@MODO_PAGO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@NROTARJETA", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@CODTARJETA", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@ID_SUCURSAL", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;




        }



    }
}

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

           
            SqlParametros = comando.Parameters.Add("@FECHAVENTA", SqlDbType.DateTime);
            SqlParametros.Value = ven.Fecha1;
            SqlParametros = comando.Parameters.Add("@ID_USUARIO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@TOTAL", SqlDbType.Decimal);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@MODO_ENVIO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@MODO_PAGO", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@NROTAJETA", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@CODTARJETA", SqlDbType.VarChar);
            SqlParametros.Value = ven.ID_venta1;
            SqlParametros = comando.Parameters.Add("@ID_SUCURSAL", SqlDbType.Int);
            SqlParametros.Value = ven.ID_venta1;


        }


        public DataTable ObtenerTodasLasVentas()
        {
            return acceder.ObtenerTabla("venta", "SELECT ID_venta, Fecha, ID_usuario , VENTA.Direccion, Total, Nro_tajeta,Nombre_Envio,Descripcion,Nombre FROM venta INNER JOIN envio ON envio.ID_envio = VENTA.Modo_envio INNER JOIN PAGO ON PAGO.ID_pago = venta.Modo_pago INNER JOIN sucursal ON sucursal.ID_Sucursal = venta.ID_sucursal");
        }

        public DataTable ObtenerTodosDetallesVentas(int idDetV)
        {

            return acceder.ObtenerTabla("detalle_venta", "Select ID_detalle_venta AS #, producto.Nombre , Cantidad, detalle_venta.Precio_unitario AS 'Precio' from detalle_venta INNER JOIN producto on producto.id_producto = detalle_venta.ID_producto WHERE ID_venta= "+ idDetV);
        }



    }
}

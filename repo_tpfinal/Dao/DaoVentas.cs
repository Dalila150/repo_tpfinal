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



       public int id_ultimaventa()
        {
            string consulta = "SELECT TOP 1 ID_VENTA from venta order by ID_venta desc";

            return acceder.ejecutar_transaccion(consulta);
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
            SqlParametros = comando.Parameters.Add("@NROTARJETA", SqlDbType.VarChar);
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

        public DataTable ObtenerTodasLasVentasUsuario(string Nombre)
        {
            DataTable Tabla = acceder.ObtenerTabla("venta", "select ID_venta,Fecha, venta.Direccion,Nro_tajeta,Total from venta inner join usuario on venta.ID_usuario = usuario.ID_usuario where usuario.Nombre_Usuario ='" + Nombre + "'");
            return Tabla;
        }

        public DataTable ObtenerDetallesVentasUsuario(int idDetV)
        {

            return acceder.ObtenerTabla("detalle_venta", "select ID_producto,Cantidad,Precio_unitario from detalle_venta inner join venta on detalle_venta.ID_venta = venta.ID_venta  where detalle_venta.ID_venta = " + idDetV);
        }

        public DataTable ObtenerTodasLasVentasPorFecha(string f1, string f2)
        {
            DateTime d1 = Convert.ToDateTime(f1);
            DateTime d2 = Convert.ToDateTime(f2);
            var dateTime1 = d1;
            var dateTime2 = d2;
            //SACA LA HORA 
            f1 = dateTime1.ToShortDateString();
            f2 = dateTime2.ToShortDateString();

            System.Diagnostics.Debug.WriteLine("FECHA NUMERO UNO");
            System.Diagnostics.Debug.WriteLine(f1);
            System.Diagnostics.Debug.WriteLine("FECHA NUMERO DOS");
            System.Diagnostics.Debug.WriteLine(f2);

            int res = DateTime.Compare(d1, d2);
            if (res > 0)
            {
                string consulta = "SELECT Fecha,COUNT(Fecha) AS 'Ventas' FROM venta WHERE Fecha between '" + f2 + "' and '" + f1 + "' GROUP BY Fecha";
                return acceder.ObtenerTabla("venta", consulta);
            }
            else
            {
                string consulta = "SELECT Fecha,COUNT(Fecha) AS 'Ventas' FROM venta WHERE Fecha between '" + f1 + "' and '" + f2 + "' GROUP BY Fecha";
                return acceder.ObtenerTabla("venta", consulta);
            }

        }

    }
}

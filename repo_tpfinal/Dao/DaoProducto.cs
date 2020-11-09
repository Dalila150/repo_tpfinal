using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Dao
{
    public class DaoProducto
    {
        AccesoaDatos ds = new AccesoaDatos();
        public DataTable ObtenerTodosLosProductos()
        {
            return ds.ObtenerTabla("producto", "Select id_Producto as ID, producto.Nombre as Producto, marca.Nombre as Marca, producto.Stock as Disponibles, producto.Precio_unitario as Precio, producto.estado AS Estado  from producto inner join marca on producto.ID_marca = marca.ID_marca inner join categoria on categoria.id_categoria = producto.ID_categoria");
        }

        public DataTable BusquedaDeProductos(String texto)
        {
            return ds.ObtenerTabla("producto", "Select id_Producto as ID, producto.Nombre as Producto, marca.Nombre as Marca, producto.Stock as Disponibles, producto.Precio_unitario as Precio  from producto inner join marca on producto.ID_marca = marca.ID_marca inner join categoria on categoria.id_categoria = producto.ID_categoria WHERE producto.Nombre LIKE '%" + texto + "%'");
        }

        public DataTable ObtenerUnProducto(String id)
        {
            DataTable aux = new DataTable();
            aux = ds.ObtenerTabla("producto", "Select * from producto WHERE id_producto = " + id);
            return aux;
        }
     
        public void ArmarParametrosProductoActualizado(ref SqlCommand Comando, Producto productos)
        {
            SqlParameter sqlparametros = new SqlParameter();
            sqlparametros = Comando.Parameters.Add("@IDPROD", SqlDbType.Int);
            sqlparametros.Value = productos.Id_producto;
            sqlparametros = Comando.Parameters.Add("@STOCK", SqlDbType.Int);
            sqlparametros.Value = productos.Stock1;
            sqlparametros = Comando.Parameters.Add("@MARCA", SqlDbType.Int);
            sqlparametros.Value = productos.ID_marca1;
            sqlparametros = Comando.Parameters.Add("@PRECIO", SqlDbType.Decimal, 18);
            sqlparametros.Value = productos.Precio_unitario1;
            sqlparametros = Comando.Parameters.Add("@CATEGORIA", SqlDbType.Int);
            sqlparametros.Value = productos.ID_categoria1;
            sqlparametros = Comando.Parameters.Add("@ESTADO", SqlDbType.Int);
            sqlparametros.Value = productos.Estado1;
            sqlparametros = Comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Nombre1;
            sqlparametros = Comando.Parameters.Add("@IMAGEN", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Imagen1;
            sqlparametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Descripcion1;
        }

        public void ArmarParametrosProductoNuevo(ref SqlCommand Comando, Producto productos)
        {
            SqlParameter sqlparametros = new SqlParameter();
            sqlparametros = Comando.Parameters.Add("@STOCK", SqlDbType.Int);
            sqlparametros.Value = productos.Stock1;
            sqlparametros = Comando.Parameters.Add("@MARCA", SqlDbType.Int);
            sqlparametros.Value = productos.ID_marca1;
            sqlparametros = Comando.Parameters.Add("@PRECIO", SqlDbType.Decimal, 18);
            sqlparametros.Value = productos.Precio_unitario1;
            sqlparametros = Comando.Parameters.Add("@CATEGORIA", SqlDbType.Int);
            sqlparametros.Value = productos.ID_categoria1;
            sqlparametros = Comando.Parameters.Add("@ESTADO", SqlDbType.Int);
            sqlparametros.Value = productos.Estado1;
            sqlparametros = Comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Nombre1;
            sqlparametros = Comando.Parameters.Add("@IMAGEN", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Imagen1;
            sqlparametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar, 255);
            sqlparametros.Value = productos.Descripcion1;
        }
        public int AgregarProducto(Producto pro)
        {
            int estado = 1;
            Producto p = new Producto();
            p.Estado1 = estado;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoNuevo(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spBuscarProductoRepetido");
        }
        public int eliminarProducto(SqlCommand Comando, String NombreSP, int Id)
        {
            AccesoaDatos ad = new AccesoaDatos();
            SqlConnection Conexion = ad.ObtenerConexion();
            SqlCommand cmd = new SqlCommand();

            int FilasCambiadas;
            cmd = Comando;

            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            cmd.Parameters.Add("@id_producto_programa", SqlDbType.Int).Value = Id;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();

            return FilasCambiadas;
        }

    }
}

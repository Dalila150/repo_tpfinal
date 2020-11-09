using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioProducto
    {
        AccesoaDatos ad = new AccesoaDatos();
        public bool ActualizarProducto(Producto Pro)
        {
            int FilasInsertadas = 0;
            SqlCommand Comando = new SqlCommand();
            AccesoaDatos ad = new AccesoaDatos();
            DaoProducto dp = new DaoProducto();
            dp.ArmarParametrosProductoActualizado(ref Comando, Pro);
            FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spActualizarProducto");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }

        public bool CrearProducto(Producto Pro)
        {
            int FilasInsertadas = 0;
            SqlCommand Comando = new SqlCommand();
            DaoProducto dp = new DaoProducto();
            dp.ArmarParametrosProductoNuevo(ref Comando, Pro);
            FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spCrearProducto");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }
        public bool EliminarProducto(Producto producto)
        {
            SqlCommand Comando = new SqlCommand();
            AccesoaDatos ad = new AccesoaDatos();
            DaoProducto dp = new DaoProducto();
            int filasEliminadas = dp.eliminarProducto(Comando, "spEliminarProducto", producto.Id_producto);
            if (filasEliminadas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataTable TodosLosProductos()
        {
            DaoProducto dp = new DaoProducto();
            return dp.ObtenerTodosLosProductos();
        }
        public DataTable BuscarProductos(String texto)
        {
            DaoProducto dp = new DaoProducto();
            return dp.BusquedaDeProductos(texto);
        }
        public DataTable ObtenerProducto(String id)
        {
            DaoProducto dp = new DaoProducto();
            return dp.ObtenerUnProducto(id);
        }
        public DataTable ObtenerMarcas()
        {
            DaoMarcas dm = new DaoMarcas();
            return dm.getTablaMarcas();
        }
        public DataTable ObtenerCategorias()
        {
            DaoCategoria dm = new DaoCategoria();
            return dm.ObtenerCategorias();
        }
    }
}
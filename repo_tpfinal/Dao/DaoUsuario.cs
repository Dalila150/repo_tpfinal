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
    public class DaoUsuario
    {
        AccesoaDatos ds = new AccesoaDatos();

        public Boolean existeUsuario(string Nombre)
        {
            String consulta = "Select * from Usuario where Nombre='" + Nombre + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaUsuario()
        {
            // List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select [ID_usuario] , [Nombre] , [Apellido] , [Rol] from Usuario");
            return tabla;
        }

        public DataTable getTablaUsuarioEspecifico(string Nombre)
        {
            // List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select ID_usuario,Nombre,Apellido,Rol from Usuario where Nombre='" + Nombre + "'");
            return tabla;
        }

    }
}

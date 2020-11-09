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

        public Boolean existeUsuarioApellido(string Nombre)
        {
            String consulta = "Select * from Usuario where Apellido='" + Nombre + "'";
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

        public DataTable getTablaUsuarioEspecificoApellido(string Nombre)
        {
            // List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select ID_usuario,Nombre,Apellido,Rol from Usuario where Apellido ='" + Nombre + "'");
            return tabla;
        }
        public int agregarNuevoUsuario(Usuarios usur)
        {


            usur.setID_usuario(ds.ObtenerMaximo("SELECT max(ID_Usuario) FROM Usuarios") + 1);

            SqlCommand comando = new SqlCommand();
            ParametrosUsuarioNuevo(ref comando, usur);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spCrearUsuario");
        }



        private void ParametrosUsuarioNuevo(ref SqlCommand comando, Usuarios usur)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = comando.Parameters.Add("@ROL", SqlDbType.Int);
            SqlParametros.Value = usur.getRolUsuario();
            SqlParametros = comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar);
            SqlParametros.Value = usur.getNombreUsuario();
            SqlParametros = comando.Parameters.Add("@APELLIDO", SqlDbType.VarChar);
            SqlParametros.Value = usur.getApellidoUsuario();
            SqlParametros = comando.Parameters.Add("@EMAIL", SqlDbType.VarChar);
            SqlParametros.Value = usur.getEmailUsuario();
            SqlParametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar);
            SqlParametros.Value = usur.getDireccionUsuario();
            SqlParametros = comando.Parameters.Add("@NOMBREUSUARIO", SqlDbType.VarChar);
            SqlParametros.Value = usur.getNombre_UsuarioUsuario();
            SqlParametros = comando.Parameters.Add("@PASSWORD", SqlDbType.VarChar);
            SqlParametros.Value = usur.getPasswordUsuario();
            SqlParametros = comando.Parameters.Add("@TELEFONO", SqlDbType.VarChar);
            SqlParametros.Value = usur.getTelefonoUsuario();
            SqlParametros = comando.Parameters.Add("@DNI", SqlDbType.VarChar);
            SqlParametros.Value = usur.getDNIUsuario();

        }


    }
}

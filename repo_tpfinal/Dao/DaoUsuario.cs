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
            String consulta = "Select * from Usuario where Nombre="+"'" + Nombre + "'";
            return ds.existe(consulta);
        }

        public Boolean existeUsuarioApellido(string Nombre)
        {
            String consulta = "Select * from usuario where Apellido='" + Nombre + "'";
            return ds.existe(consulta);
        }

        public Boolean existeUsuarioNombre_Usuario(string Nombre_Usuario)
        {
            String consulta = "Select * from Usuario where Nombre_Usuario='" + Nombre_Usuario + "'";
            return ds.existe(consulta);
        }
        public Boolean existeUsuarioPassword(string Password)
        {
            String consulta = "Select * from Usuario where Password='" + Password + "'";
            return ds.existe(consulta);
        }

        public Boolean existeUsuarioYclave(string Usuario, string Clave)
        {
            String consulta = "Select * from Usuario where Nombre_Usuario='" + Usuario + "'and Password='" + Clave + "'";
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
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select ID_usuario,Nombre,Apellido,Rol from Usuario where Nombre Like'" + Nombre + "%'");
            return tabla;
        }
        public DataTable getTablaUsuarioEspecificoApellido(string Nombre)
        {
            // List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select ID_usuario,Nombre,Apellido,Rol from Usuario where Apellido Like'" + Nombre + "%'");
            return tabla;
        }
        public int agregarNuevoUsuario(Usuarios usur)
        {


            //usur.setID_usuario(ds.ObtenerMaximo("SELECT max(ID_Usuario) FROM Usuario") + 1);

            SqlCommand comando = new SqlCommand();
            ParametrosUsuarioNuevo(ref comando, usur);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spCrearUsuario");
        }

        public DataTable CantidadTotalUsuarios()
        {
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select count(usuario.id_usuario) from usuario");
            return tabla;
        }
        public DataTable CantidadUsuarioAdmin()
        {
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select count(usuario.id_usuario) from usuario where rol = 2");
            return tabla;
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
        public int eliminarUsuarioAdmin(Usuarios usu)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioAdminEliminar(ref comando, usu);
            //SE INGRESA EL NOMBRE DEL PROCEDIMIENTO ALMACENADO
            return ds.EjecutarProcedimientoAlmacenado(comando, "sp_EliminarUsuarioAdmin");
        }
        private void ArmarParametrosUsuarioAdminEliminar(ref SqlCommand Comando, Usuarios usu)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Usuario", SqlDbType.VarChar);
            SqlParametros.Value = usu.getNombre_UsuarioUsuario();
        }

        public int actualizar_datos_usuario_en_bd(Usuarios usur)
        {
            SqlCommand comando = new SqlCommand();
            ParamatrosActualizarUsuario(ref comando, usur);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarUsuario");
        }

        private void ParamatrosActualizarUsuario(ref SqlCommand comando, Usuarios usur)
        {
            SqlParameter SqlParametros = new SqlParameter();

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


        }

        //---------------------------------------------------------------
        public DataTable getTablaUsuarioCompleto(string Nombre)
        {
            // List<Categoria> lista = new List<Categoria>();
            SqlDataAdapter comando = new SqlDataAdapter();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select Nombre,Apellido,Email,Direccion,Nombre_Usuario,Password,Telefono,DNI from Usuario where Nombre_Usuario ='" + Nombre + "'");
            return tabla;
        }
        //---------------------------------------------------------------

    }
}

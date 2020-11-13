using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data;

namespace Negocio
{
    public class NegocioUsuario
    {
        public DataTable getTabla()
        {
            DaoUsuario dao = new DaoUsuario();
            return dao.getTablaUsuario();
        }

        public DataTable getTablaBuscarNombre(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            return dao.getTablaUsuarioEspecifico(Nombre);
        }

        public DataTable getTablaBuscarApellido(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            return dao.getTablaUsuarioEspecificoApellido(Nombre);
        }

        public bool BuscarUsuarioNombre(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuario(Nombre);
            if (Existe == true)
            {
                getTablaBuscarNombre(Nombre);
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool BuscarUsuarioApellido(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuarioApellido(Nombre);
            if (Existe == true)
            {
                getTablaBuscarApellido(Nombre);
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool CrearUsuario(Usuarios usuario)
        {
            DaoUsuario dao = new DaoUsuario();

            if (dao.existeUsuario(usuario.getNombreUsuario()) && dao.existeUsuarioApellido(usuario.getApellidoUsuario()))
            {
                return true;
            }
            else
            {
                dao.agregarNuevoUsuario(usuario); 
                return false;
            }

        }
        public bool eliminarUsuarioAdmin_neg(String nombre)
        {
            //Validar usuarioadmin
            DaoUsuario dao = new DaoUsuario();
            Usuarios usu = new Usuarios();
            usu.setNombre_UsuarioUsuario(nombre);
            int op = dao.eliminarUsuarioAdmin(usu);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool BuscarUsuarioNombre_Usuario(string Nombre_Usuario)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuarioNombre_Usuario(Nombre_Usuario);
            if (Existe == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool BuscarUsuarioPassword(string Password)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuarioPassword(Password);
            if (Existe == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool BuscarUsuarioYclave(string Nombre_Usuario, string Clave)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuarioYclave(Nombre_Usuario, Clave);
            if (Existe == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public int ActualizarUsuario(Usuarios user)
        {


            DaoUsuario datos = new DaoUsuario();

            int actualizo = datos.actualizar_datos_usuario_en_bd(user);

            return actualizo;


        }

        public DataTable ObtenerCantidadUsuarios()
        {
            DaoUsuario du = new DaoUsuario();
            return du.CantidadTotalUsuarios();
        }
        public DataTable ObtenerCantidadAdmin()
        {
            DaoUsuario du = new DaoUsuario();
            return du.CantidadUsuarioAdmin();
        }
    }
}

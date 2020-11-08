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

        public DataTable getTablaBuscar(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            return dao.getTablaUsuarioEspecifico(Nombre);
        }

        public bool BuscarUsuarioNombre(string Nombre)
        {
            DaoUsuario dao = new DaoUsuario();
            bool Existe = dao.existeUsuario(Nombre);
            if (Existe == true)
            {
                getTablaBuscar(Nombre);
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}

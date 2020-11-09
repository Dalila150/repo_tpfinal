using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioCategoria
    {

        public bool eliminarCategoria(int id)
        {
            //Validar id existente 
            DaoCategoria dao = new DaoCategoria();
            Categorias cat = new Categorias();
            //cat.setIdCategoria(id);
            cat.Id_categoria = id;

            int op = dao.eliminarCategoria(cat);
            if (op == 1)
                return true;
            else
                return false;
        }

        public bool agregarCategoria(String nombre)
        {
            int cantFilas = 0;

            Categorias cat = new Categorias();
            //cat.setNombreCategoria(nombre);
            cat.Nombre1 = nombre;

            DaoCategoria dao = new DaoCategoria();
            if (dao.existeCategoría(cat) == false)
            {
                cantFilas = dao.agregarCategoria(cat);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }


    }
}

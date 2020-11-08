using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;


namespace Dao
{
    public class daoCategorias
    {
        AccesoaDatos ds = new AccesoaDatos();

        public Boolean existeCategoría(Categorias cat)
        {
            String consulta = "Select * from categorías where NombreCategoría='" + cat.Nombre1 + "'";
            return ds.Existe_en_BD(consulta);
        }

        public int eliminarCategoria(Categorias cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriaEliminar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarCategoria");
        }


        public int agregarCategoria(Categorias cat)
        {

            //cat.setIdCategoria(ds.ObtenerMaximo("SELECT max(idCategoría) FROM Categorías") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriaAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarCategoria");
        }

        private void ArmarParametrosCategoriaEliminar(ref SqlCommand Comando, Categorias cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.Id_categoria;
        }

        private void ArmarParametrosCategoriaAgregar(ref SqlCommand Comando, Categorias cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.Id_categoria;
            SqlParametros = Comando.Parameters.Add("@NOMBRECAT", SqlDbType.VarChar);
            SqlParametros.Value = cat.Nombre1;
        }

    }
}

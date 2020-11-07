using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices.ComTypes;

namespace Datos
{
    public class AccesoaDatos
    {
        //string ruta = "Data Source=localhost\\sqlexpress;Initial Catalog=TP_Final;Persist Security Info=True;User ID=sa;Password=123456";
        string ruta = "Data Source=LAPTOP-JSEM9I72\\SQLEXPRESS;Initial Catalog=TP_Final;Integrated Security=True";


        public AccesoaDatos()
        {

        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(ruta);

            try
            {
                cn.Open();
                return cn;
            }

            catch (Exception ex)
            {
                return null;
            }
        }

        public SqlDataAdapter ObtenerAdaptador(string consultaSql)
        {
            SqlDataAdapter adaptador;

            try
            {
                adaptador = new SqlDataAdapter(consultaSql, ObtenerConexion());
                return adaptador;
            }

            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable TraerTabla(string NombreTabla, string consulta)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adap = ObtenerAdaptador(consulta);
            adap.Fill(ds, NombreTabla);
            return ds.Tables[NombreTabla];
        }

        public DataSet TraerDs(string NombreTabla, string consulta)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adap = ObtenerAdaptador(consulta);
            adap.Fill(ds, NombreTabla);
            return ds;
        }


        public Boolean Existe_en_BD(string consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }

            return estado;
        }

    }



}

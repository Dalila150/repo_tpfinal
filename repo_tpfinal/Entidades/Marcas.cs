using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Marcas
    {
        private int ID_marca;
        private string Nombre;
        private bool Estado;

        public Marcas()
        {

        }

        public Marcas(int id_marca, string nombre, bool estado)
        {
            ID_marca1 = id_marca;
            Nombre1 = nombre;
            Estado1 = estado;
        }

        public int ID_marca1 { get => ID_marca; set => ID_marca = value; }
        public string Nombre1 { get => Nombre; set => Nombre = value; }
        public bool Estado1 { get => Estado; set => Estado = value; }
    }
}

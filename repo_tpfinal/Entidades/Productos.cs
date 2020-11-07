using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Productos
    {
        private int id_producto;
        private int Stock;
        private int ID_marca;
        private decimal Precio_unitario;
        private int ID_categoria;
        private bool Estado;
        private String Nombre;
        private String Imagen;

        public Productos()
        {

        }

        public Productos(int id_producto, int stock, int iD_marca, decimal precio_unitario, int iD_categoria, bool estado, string nombre, string imagen)
        {
            this.Id_producto = id_producto;
            Stock1 = stock;
            ID_marca1 = iD_marca;
            Precio_unitario1 = precio_unitario;
            ID_categoria1 = iD_categoria;
            Estado1 = estado;
            Nombre1 = nombre;
            Imagen1 = imagen;
        }

        public int Id_producto { get => id_producto; set => id_producto = value; }
        public int Stock1 { get => Stock; set => Stock = value; }
        public int ID_marca1 { get => ID_marca; set => ID_marca = value; }
        public decimal Precio_unitario1 { get => Precio_unitario; set => Precio_unitario = value; }
        public int ID_categoria1 { get => ID_categoria; set => ID_categoria = value; }
        public bool Estado1 { get => Estado; set => Estado = value; }
        public string Nombre1 { get => Nombre; set => Nombre = value; }
        public string Imagen1 { get => Imagen; set => Imagen = value; }
    }
}

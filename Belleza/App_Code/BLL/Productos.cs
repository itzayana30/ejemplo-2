using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Descripción breve de Productos
/// </summary>
/// 
namespace BLL
{
public class Productos
{
    public Productos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static long InsertProducto(Productoinfo info)
    {
        Producto Producto = new Producto();
        Producto.IDProd = info.IDProd;

        Producto = new Producto();
        Producto.Ma rca = info.Marca;

        Producto = new Producto();
        Producto.Numero = info.Numero;

        Producto = new Producto();
        Producto.Precio = info.Precio;

        Producto = new Producto();
        Producto.Oferta = info.Oferta;

        Producto = new Producto();
        Producto.IdCategoria = info.IdCategoria;

        //objeto del Data Context
        DataClassesDataContext dc = new DataClassesDataContext();

        // se inserta el objeto en el dc
        dc.Producto.InsertOnSubmit(Producto);
        dc.SubmitChanges(); //ejecuta cambios

        return Producto.IDProd; //devuelve el ID insertado
    }
    }
    public class Productoinfo
    {
        public long IDProd { get; set; }
        public string Marca { get; set; }

        public int Numero { get; set; }
        public decimal Precio { get; set; }
        public decimal Oferta { get; set; }
        public long IdCategoria { get; set; }

       
    }
}
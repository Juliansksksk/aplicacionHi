using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication7.Web.clases
{
    public class Relacion
    {


        public class Producto
        {
            public int ID { get; set; }
            public string Nombre { get; set; }
            public decimal Precio { get; set; }
            public string Descripcion { get; set; }
        }

        public class Cliente
        {
            public int ID { get; set; }
            public string Nombre { get; set; }
            public string Apellido { get; set; }
            public string Email { get; set; }
            public string Telefono { get; set; }
        }


    }
}
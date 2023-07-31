using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using static WebApplication7.Web.clases.Relacion;

namespace WebApplication7.Negocio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IMiServicio" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IMiServicio
    {
        [OperationContract]
        void CrearProducto(string nombre, decimal precio, string descripcion);

        [OperationContract]
        List<Producto> ObtenerProductos();

        [OperationContract]
        Producto ObtenerProductoPorID(int id);

        [OperationContract]
        void ActualizarProducto(int id, string nombre, decimal precio, string descripcion);

        [OperationContract]
        void EliminarProducto(int id);

        [OperationContract]
        void CrearCliente(string nombre, string apellido, string email, string telefono);

        [OperationContract]
        List<Cliente> ObtenerClientes();

        // Agrega otros métodos para los demás procedimientos almacenados
    }
}

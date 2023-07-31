using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using WebApplication7.Datos;
using static WebApplication7.Web.clases.Relacion;

namespace WebApplication7.Negocio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "MiServicio" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione MiServicio.svc o MiServicio.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class MiServicio : IMiServicio
    {
        private ConexionSql ConexionSql;

        public MiServicio()
        {
            ConexionSql = new ConexionSql();
        }

        public void CrearProducto(string nombre, decimal precio, string descripcion)
        {
            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("CrearProducto", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@Nombre", nombre);
                command.Parameters.AddWithValue("@Precio", precio);
                command.Parameters.AddWithValue("@Descripcion", descripcion);

                command.ExecuteNonQuery();
            }
        }

        public List<Producto> ObtenerProductos()
        {
            List<Producto> productos = new List<Producto>();

            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("ObtenerProductos", connection);
                command.CommandType = CommandType.StoredProcedure;

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Producto producto = new Producto();
                    producto.ID = (int)reader["ID"];
                    producto.Nombre = reader["Nombre"].ToString();
                    producto.Precio = (decimal)reader["Precio"];
                    producto.Descripcion = reader["Descripcion"].ToString();

                    productos.Add(producto);
                }

                reader.Close();
            }

            return productos;
        }

        public Producto ObtenerProductoPorID(int id)
        {
            Producto producto = null;

            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("ObtenerProductoPorID", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ID", id);

                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    producto = new Producto();
                    producto.ID = (int)reader["ID"];
                    producto.Nombre = reader["Nombre"].ToString();
                    producto.Precio = (decimal)reader["Precio"];
                    producto.Descripcion = reader["Descripcion"].ToString();
                }

                reader.Close();
            }

            return producto;
        }

        public void ActualizarProducto(int id, string nombre, decimal precio, string descripcion)
        {
            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("ActualizarProducto", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@ID", id);
                command.Parameters.AddWithValue("@Nombre", nombre);
                command.Parameters.AddWithValue("@Precio", precio);
                command.Parameters.AddWithValue("@Descripcion", descripcion);

                command.ExecuteNonQuery();
            }
        }

        public void EliminarProducto(int id)
        {
            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("EliminarProducto", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ID", id);

                command.ExecuteNonQuery();
            }
        }

        public void CrearCliente(string nombre, string apellido, string email, string telefono)
        {
            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("CrearCliente", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@Nombre", nombre);
                command.Parameters.AddWithValue("@Apellido", apellido);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Telefono", telefono);

                command.ExecuteNonQuery();
            }
        }

        public List<Cliente> ObtenerClientes()
        {
            List<Cliente> clientes = new List<Cliente>();

            using (SqlConnection connection = ConexionSql.GetConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand("ObtenerClientes", connection);
                command.CommandType = CommandType.StoredProcedure;

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Cliente cliente = new Cliente();
                    cliente.ID = (int)reader["ID"];
                    cliente.Nombre = reader["Nombre"].ToString();
                    cliente.Apellido = reader["Apellido"].ToString();
                    cliente.Email = reader["Email"].ToString();
                    cliente.Telefono = reader["Telefono"].ToString();

                    clientes.Add(cliente);
                }

                reader.Close();
            }

            return clientes;
        }

    }
}

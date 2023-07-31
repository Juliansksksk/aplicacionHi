using Microsoft.Rest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication7.Negocio;
using WebApplication7.ServiceReference1;
using static WebApplication7.Web.clases.Relacion;

namespace WebApplication7
{
    public partial class formularioUno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            CargarProductos();

        }

        protected void gridProductos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void CargarProductos()
        {
            MiServicio serviceClient = new MiServicio();

            
                // Obtener y enlazar la lista de productos al GridView
                List<Producto> productos = serviceClient.ObtenerProductos();
                gridProductos.DataSource = productos;
                gridProductos.DataBind();
            




        }

        public void LimpiarCampos()
        {

            txtNombre.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtID.Text = string.Empty;
        }




        protected void CrearProducto(object sender, EventArgs e)
        {
            MiServicio crearprductoss = new MiServicio();

            string nombre = txtNombre.Text;
            decimal precio = Convert.ToDecimal(txtPrecio.Text);
            string descripcion = txtDescripcion.Text;

            crearprductoss.CrearProducto(nombre, precio, descripcion);

            CargarProductos(); // Actualiza la lista de productos mostrada en el GridView
            LimpiarCampos(); // Limpia los campos de texto después de crear el producto
        }

        protected void EditarProducto(object sender, EventArgs e)
        {
            MiServicio modificarprod = new MiServicio();

            {
                int id = Convert.ToInt32(txtID.Text);
                string nombre = TextBox1.Text;
                decimal precio = Convert.ToDecimal(TextBox2.Text);
                string descripcion = TextBox3.Text;

               

                modificarprod.ActualizarProducto(id,nombre, precio, descripcion);

                CargarProductos(); // Actualiza la lista de productos mostrada en el GridView
                LimpiarCampos(); // Limpia los campos de texto después de editar el producto
            }


        }

        protected void EliminarProducto(object sender, EventArgs e)
        {
            int id;

            MiServicio eliminarprodcutos = new MiServicio();

            if (int.TryParse(TextBox4.Text, out id)) 

            eliminarprodcutos.EliminarProducto(id);

            CargarProductos(); // Actualiza la lista de productos mostrada en el GridView
            LimpiarCampos(); // Limpia los campos de texto después de eliminar el producto
        }

        protected void btnIrAotraPagina_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("MuestraProductos.aspx");
            
        }
    }
}
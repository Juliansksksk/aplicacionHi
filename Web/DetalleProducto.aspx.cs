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

namespace WebApplication7.Web
{
    public partial class DetalleProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MiServicio serviceClient = new MiServicio();
            {
                if (!IsPostBack)
                {
                    // Verificar si se ha pasado el ID del producto como parámetro en la URL
                    if (Request.QueryString["id"] != null)
                    {
                        int idProducto = Convert.ToInt32(Request.QueryString["id"]);

                        // Llamar al método para obtener el detalle del producto
                        Producto producto = serviceClient.ObtenerProductoPorID(idProducto);

                        if (producto != null)
                        {
                            // Mostrar los datos del producto en los controles
                            lblNombre.Text = producto.Nombre;
                            lblPrecio.Text = producto.Precio.ToString();
                            lblDescripcion.Text = producto.Descripcion;
                        }
                        else
                        {
                            // El producto no existe, redireccionar a una página de error o mostrar un mensaje al usuario
                            Response.Redirect("Error.aspx");
                        }
                    }
                    else
                    {
                        // No se ha proporcionado el ID del producto, redireccionar a una página de error o mostrar un mensaje al usuario
                        Response.Redirect("Error.aspx");
                    }
                }
            }


            //if (!IsPostBack)
            //{
            //    if (Request.QueryString["id"] != null)
            //    {
            //        int idProducto = Convert.ToInt32(Request.QueryString["id"]);
            //        Producto producto = serviceClient.ObtenerProductoPorID(idProducto);
            //        MostrarDetalleProducto(producto);
            //    }
            //    else
            //    {
            //        // No se proporcionó el parámetro ID en la URL, puedes mostrar un mensaje de error o realizar otra acción adecuada
            //    }
            //}



        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "¡Compra realizada con éxito!";
            lblMensaje.Visible = true;
        }

    }
}
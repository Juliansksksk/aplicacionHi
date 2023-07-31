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
    public partial class MuestraProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarProductos();
        }


        public void CargarProductos()
        {
            MiServicio serviceClient = new MiServicio();


            // Obtener y enlazar la lista de productos al GridView
           
            List<clases.Relacion.Producto> productos = serviceClient.ObtenerProductos();

            GridViewProductos.DataSource = productos;
            GridViewProductos.DataBind();





        }

        protected void GridViewProductos_lnkVerDetalle_0(object sender, EventArgs e)
        {
            {
                int idProducto = Convert.ToInt32(GridViewProductos.SelectedDataKey.Value);
                Response.Redirect("DetalleProducto.aspx?id=" + idProducto);
            }
        }

        protected void lnkVerDetalle_Click(object sender, EventArgs e)
        {

            {
                int idProducto = Convert.ToInt32(GridViewProductos.SelectedDataKey.Value);
                Response.Redirect("DetalleProducto.aspx?id=" + idProducto);
            }


        }

        protected void GridViewProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                if (GridViewProductos.SelectedDataKey != null)
                {
                    int idProducto = Convert.ToInt32(GridViewProductos.SelectedDataKey.Value);
                    Response.Redirect("DetalleProducto.aspx?id=" + idProducto);
                }
            
        }

        //protected void GridViewProductos_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    {
        //        int idProducto = Convert.ToInt32(GridViewProductos.SelectedDataKey.Value);
        //        Response.Redirect("DetalleProducto.aspx?id=" + idProducto);
        //    }

        //}

        protected void GridViewProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VerDetalle")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // Índice de la fila en la que se hizo clic
                int idProducto = Convert.ToInt32(GridViewProductos.DataKeys[rowIndex].Value); // Obtener el ID del producto

                Response.Redirect("DetalleProducto.aspx?id=" + idProducto); // Redirigir a la página de detalle del producto
            }
        }

    }
}
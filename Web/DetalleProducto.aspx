<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="WebApplication7.Web.DetalleProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <h1>Detalle de Producto</h1>
            <hr />
            <div>
                <label for="lblNombre">Nombre:</label>
                <asp:Label ID="lblNombre" runat="server"></asp:Label>
            </div>
            <div>
                <label for="lblPrecio">Precio:</label>
                <asp:Label ID="lblPrecio" runat="server"></asp:Label>
            </div>
            <div>
                <label for="lblDescripcion">Descripción:</label>
                <asp:Label ID="lblDescripcion" runat="server"></asp:Label>
            </div>
            <br />
            <asp:Button ID="btnComprar" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
        </div>


        </div>

        <div>   
            <asp:Label ID="lblMensaje" runat="server" Visible="false" CssClass="mensaje-exito"></asp:Label>


        </div>
    </form>






</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioUno.aspx.cs" Inherits="WebApplication7.formularioUno" %>
<%@ Import Namespace="WebApplication7.ServiceReference1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


           <div> 

            Nombre: <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
Precio: <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox><br />
Descripción: <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox><br />
<asp:Button ID="Button1" runat="server" Text="Crear Producto" OnClick="CrearProducto" />

        </div>
                <br />
        <br />
        <div>   
ID: <asp:TextBox ID="txtID" runat="server"></asp:TextBox><br />
Nombre: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
Precio: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
Descripción: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
<asp:Button ID="Button2" runat="server" Text="Editar Producto" OnClick="EditarProducto" />

        </div>

                <br />
        <br />
        <div> 
ID: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
<asp:Button ID="Button3" runat="server" Text="Eliminar Producto" OnClick="EliminarProducto" />

        </div>


         <br />
        <br />
         <br />
        <br />
         <br />
        <br />




        <div>   
            <asp:GridView ID="gridProductos" runat="server" AutoGenerateColumns="false"  OnSelectedIndexChanged="gridProductos_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" /> 
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Precio" HeaderText="Precio" />
 
        
    </Columns>
</asp:GridView>


    

        </div>

        <asp:Button ID="btnIrAotraPagina" runat="server" Text="ir a catalogo" OnClick="btnIrAotraPagina_Click" NavigateUrl="~/MuestraProductos.aspx" />


    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuestraProductos.aspx.cs" Inherits="WebApplication7.Web.MuestraProductos" %>

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
            <asp:GridView ID="GridViewProductos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand="GridViewProductos_RowCommand">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="Id" Visible="false" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Precio" HeaderText="Precio" />
        <asp:TemplateField HeaderText="Acciones">
    <ItemTemplate>
        <asp:LinkButton ID="lnkVerDetalle" runat="server" CommandName="VerDetalle" CommandArgument='<%# Container.DataItemIndex %>' Text="Ver detalle"></asp:LinkButton>
    </ItemTemplate>
</asp:TemplateField>

    </Columns>
</asp:GridView>


        </div>



        </div>
    </form>
</body>
</html>

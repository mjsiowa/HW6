<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>Header div</div>

        <div>Nav Bar div</div>

    <div>
        <asp:SqlDataSource ID="sds_mstaub_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_recipes %>" SelectCommand="SELECT * FROM [mstaub_recipes]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" style="margin-right: 0px" Width="442px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submitby" HeaderText="Submitted by" SortExpression="submitby" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        </div>

        <div>Footer div</div>
    
    </div>
    </form>
</body>
</html>

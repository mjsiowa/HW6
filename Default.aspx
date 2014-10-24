<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header"><h1>Wicked Easy Recipes</h1><h2>Recipes with 5 ingredents or less!</h2></div>

        <div class="navmenu"><table><tr><td>
            <asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td><td>
            <asp:HyperLink ID="link_new" runat="server" NavigateUrl="~/newrecipe.aspx">New Recipe</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink></td></tr></table>

        </div>

    <div class="mainbody">
        <asp:SqlDataSource ID="sds_mstaub_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_recipes %>" SelectCommand="SELECT * FROM [mstaub_recipes]" DeleteCommand="DELETE FROM [mstaub_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [mstaub_recipes] ([name], [submitby], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@name, @submitby, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" UpdateCommand="UPDATE [mstaub_recipes] SET [name] = @name, [submitby] = @submitby, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="grdvw_receipes" runat="server" CssClass="cssgridview" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" style="margin-right: 0px" Width="442px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submitby" HeaderText="Submitted by" SortExpression="submitby" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="recipe.aspx?recipeID={0}" Text="Select" />
            </Columns>
             <alternatingrowstyle cssclass="alt" />
        </asp:GridView>
        </div>

        <div class="footer">Copyright 2014 Software Design and Development</div>
    
    </div>
    </form>
</body>
</html>

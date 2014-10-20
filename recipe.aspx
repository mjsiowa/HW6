<%@ Page Language="VB" AutoEventWireup="false" CodeFile="recipe.aspx.vb" Inherits="recipe" %>

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
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" Height="50px" Width="383px">
                <Fields>
                    <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                    <asp:BoundField DataField="submitby" HeaderText="Submitted by" SortExpression="submitby" />
                    <asp:BoundField DataField="ing_1" HeaderText="Ingredient #1" SortExpression="ing_1" />
                    <asp:BoundField DataField="ing_2" HeaderText="Ingredient #2" SortExpression="ing_2" />
                    <asp:BoundField DataField="ing_3" HeaderText="Ingredient #3" SortExpression="ing_3" />
                    <asp:BoundField DataField="ing_4" HeaderText="Ingredient #4" SortExpression="ing_4" />
                    <asp:BoundField DataField="ing_5" HeaderText="Ingredient #5" SortExpression="ing_5" />
                    <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                    <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                </Fields>
            </asp:DetailsView>
        <br />
    </div>
         <div>Footer div</div>
    </div>
    </form>
</body>
</html>

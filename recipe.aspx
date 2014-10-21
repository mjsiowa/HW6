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
    
        <asp:SqlDataSource ID="sds_mstaub_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_recipes %>" SelectCommand="SELECT * FROM [mstaub_recipes] WHERE ([recipeID] = @recipeID)" DeleteCommand="DELETE FROM [mstaub_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [mstaub_recipes] ([name], [submitby], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@name, @submitby, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" UpdateCommand="UPDATE [mstaub_recipes] SET [name] = @name, [submitby] = @submitby, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
            <span class="deletemessage"><asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label></span>
            <br />
            <asp:DetailsView ID="dtlvw_recipes" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" Height="50px" Width="383px">
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
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
        <br />
    </div>
         <div>Footer div</div>
    </div>
    </form>
</body>
</html>

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
           <div class="header"><h1>Wicked Easy Recipes</h1><h2>Using 5 ingredents or less!</h2></div>

        <div class="navmenu"><table><tr><td>
            <asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td><td>
            <asp:HyperLink ID="link_new" runat="server" NavigateUrl="~/newrecipe.aspx">New Recipe</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink></td></tr></table>
        </div>

        <div class="mainbody">
    
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
          
            <span class="deletemessage"><asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label></span>

            <asp:FormView ID="fmvw_receipe" runat="server" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" style="margin-right: 1px" Width="409px">
                <EditItemTemplate>
                   
                   <table cellpadding="8" class="tables">
                   <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Receipe Name:</td>
                    <td><asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /></td>
                    </tr><tr style="border-bottom:1px solid black;">
                    <td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Submitted by:</td>
                    <td><asp:TextBox ID="submitbyTextBox" runat="server" Text='<%# Bind("submitby") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Ingredient #1:</td>
                    <td><asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Ingredient #2:</td>
                    <td><asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Ingredient #3:</td>
                    <td><asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Ingredient #4:</td>
                    <td><asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' /></td>
                    </tr>
                    <tr style=" border-bottom:1px solid black;">
                        <td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Ingredient #5:</td>
                    <td><asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Preperation:</td>
                    <td><asp:TextBox ID="prepTextBox" runat="server" Text='<%# Bind("prep") %>' Height="62px" TextMode="MultiLine" /></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; background-color:#F08080; border-right:1px solid black;" >Notes:</td>
                    <td><asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' Height="62px" TextMode="MultiLine" /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;"></td>
                     <td style="text-align:left;">
                         <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </td>
                </tr>
                       </table>
                       </EditItemTemplate>
                <InsertItemTemplate>
                    </InsertItemTemplate>
                <ItemTemplate>
                   
                    <table cellpadding="8" class="tables" >
                   <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Receipe Name:</td>
                    <td><asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' /></td>
                    </tr>
                    <tr style="border-bottom:1px solid black;"><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Submitted by:</td>
                    <td><asp:Label ID="submitbyLabel" runat="server" Text='<%# Bind("submitby") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Ingredient #1:</td>
                    <td><asp:Label ID="ing_1Label" runat="server" Text='<%# Bind("ing_1") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Ingredient #2:</td>
                    <td><asp:Label ID="ing_2Label" runat="server" Text='<%# Bind("ing_2") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Ingredient #3:</td>
                    <td><asp:Label ID="ing_3Label" runat="server" Text='<%# Bind("ing_3") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Ingredient #4:</td>
                    <td><asp:Label ID="ing_4Label" runat="server" Text='<%# Bind("ing_4") %>' /></td>
                    </tr>
                    <tr style="border-bottom:1px solid black;"><td style="text-align:right; background-color:#F08080; border-right:1px solid black;">Ingredient #5:</td>
                    <td><asp:Label ID="ing_5Label" runat="server" Text='<%# Bind("ing_5") %>' /></td>
                    </tr>
                    <tr><td style="text-align:right; vertical-align:top; background-color:#F08080; border-right:1px solid black;">Preperation:</td>
                    <td><asp:Label ID="prepLabel" runat="server" Text='<%# Bind("prep") %>' Height="40px" Width="200px" /></td>
                    </tr>
                    <tr><td style="text-align:right; vertical-align:top; background-color:#F08080; border-right:1px solid black;">Notes:</td>
                    <td><asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' Height="40px" Width="200px" /></td>
                    </tr>
                     <tr>
                    <td style="text-align:right; background-color:#F08080; border-right:1px solid black;"></td>
                     <td style="text-align:left;">
                         <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                         <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </td>
                    </tr>
                       </table>
                    </ItemTemplate>
            </asp:FormView>
       
    </div>
         <div class="footer">Copyright 2014 Software Design and Development</div>
    </form>
</body>
</html>

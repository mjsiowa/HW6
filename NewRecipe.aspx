<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
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
            <asp:SqlDataSource ID="sds_mstaub_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_recipes %>" DeleteCommand="DELETE FROM [mstaub_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [mstaub_recipes] ([name], [submitby], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@name, @submitby, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [mstaub_recipes]" UpdateCommand="UPDATE [mstaub_recipes] SET [name] = @name, [submitby] = @submitby, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
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
            <asp:FormView ID="Fmvw_newrecipe" runat="server" DataKeyNames="recipeID" DataSourceID="sds_mstaub_recipes" DefaultMode="Insert" Width="571px">
                <EditItemTemplate>
                </EditItemTemplate>
                
                <InsertItemTemplate>
                   <table>
                    <tr><td style="text-align:right;">(*)Receipe Name:</td>
                        <td><asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /></td>
                       <td>
                           <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Please enter recipe name"></asp:RequiredFieldValidator>
                           </td></tr>
                           <tr>
                               <td style="text-align:right;">(*)Submitted by:</td>
                               <td>
                                   <asp:TextBox ID="submitbyTextBox" runat="server" Text='<%# Bind("submitby") %>' />
                               </td>
                               <td>
                                   <asp:RequiredFieldValidator ID="SubmittedFieldValidator" runat="server" ErrorMessage="Please enter submitted by name" ControlToValidate="submitbyTextBox"></asp:RequiredFieldValidator></td>
                           </tr>
                         
                               <tr>
                                   <td style="text-align:right;">(*)Ingredent #1</td>
                                   <td>
                                       <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                                   </td>
                                   <td>
                                       <asp:RequiredFieldValidator ID="ing1_FieldValidator" runat="server" ErrorMessage="Please enter at least 1 ingredent" ControlToValidate="ing_1TextBox"></asp:RequiredFieldValidator></td>
                               </tr>
                               <tr>
                                 
                                       <td style="text-align:right;">Ingredent #2</td>
                                       <td>
                                           <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                                       </td>
                                   <td></td>
                                   </tr>
                                   <tr>
                                     
                                           <td style="text-align:right;">Ingredent #3</td>
                                           <td>
                                               <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                                           </td>
                                       <td></td>
                                       </tr>
                                       <tr>
                                       
                                               <td style="text-align:right;">Ingredent #4</td>
                                               <td>
                                                   <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                                               </td>
                                           <td></td>
                                           </tr>
                                         
                                               <tr>
                                                   <td style="text-align:right;">Ingredent #5</td>
                                                   <td>
                                                       <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                                                   </td>
                                                   <td></td>
                                               </tr>
                                               
                                                   <tr>
                                                       <td style="text-align:right;">(*)Preparation:</td>
                                                       <td>
                                                           <asp:TextBox ID="prepTextBox" runat="server" Rows="4" Text='<%# Bind("prep") %>' TextMode="MultiLine" />
                                                       </td>
                                                       <td>
                                                           <asp:RequiredFieldValidator ID="prep_RequiredFieldValidator" runat="server" ErrorMessage="Please enter preparation instructions" ControlToValidate="prepTextBox"></asp:RequiredFieldValidator></td>
                                                   </tr>
                                                   <tr>
                                                    
                                                           <td style="text-align:right;">Notes:</td>
                                                           <td>
                                                               <asp:TextBox ID="notesTextBox" runat="server" Rows="4" Text='<%# Bind("notes") %>' TextMode="MultiLine" />
                                                           </td>
                                                       <td></td>
                                                       </tr>
                                                     
                                                           <tr>
                                                               <td style="text-align:right;">
                                                                   <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                               </td>
                                                               <td>
                                                                   <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                               </td>
                                                               <td></td>
                                                           </tr>
                

                </table>
                    <br />
                
                </InsertItemTemplate>
                <ItemTemplate>
                        </ItemTemplate>
            </asp:FormView>
            <br />
        </div>

        <div class="footer">Copyright 2014 Software Design and Development</div>
    </div>
    </form>
</body>
</html>

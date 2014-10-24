<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="aboutus" %>

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




    
    <div>
    <h1>About Us</h1>
    </div>
    
     <div class="footer">Copyright 2014 Software Design and Development</div>
    </div>
        </form>
</body>
</html>

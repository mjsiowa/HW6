<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
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

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="259px"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="226px" Width="393px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
        </div>
    

  <div class="footer">Copyright 2014 Software Design and Development</div>
</div>
        </form>
</body>
</html>

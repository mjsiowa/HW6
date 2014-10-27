<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_contact" %>

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

        </div><br />

    <div id="aboutus">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
        <h2>
        Your email address:</h2>
        <asp:TextBox ID="senderAddress" runat="server" Width="259px"></asp:TextBox>
        <br />
        <br />
       
         <h2>Your message:</h2> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="226px" Width="393px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        </div>
        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <div class="deletemessage">
        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>
            </div>

        <!-- End your 'If' statement. -->
        <%End If%>
       
    

  <div class="footer">Copyright 2014 Software Design and Development</div>
</div>
        </form>
</body>
</html>

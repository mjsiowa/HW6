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
  <div class="header"><h1>Wicked Easy Recipes</h1><h2>Using 5 ingredents or less!</h2></div>

 <div class="navmenu"><table><tr><td>
            <asp:HyperLink ID="link_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></td><td>
            <asp:HyperLink ID="link_new" runat="server" NavigateUrl="~/newrecipe.aspx">New Recipe</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_about" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></td><td>
                <asp:HyperLink ID="link_contact" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink></td></tr></table>

        </div>




    
    <div class="mainbody">
    <h1>Our Story....</h1>
    
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et nulla leo. Phasellus pretium tortor lectus, ac pellentesque enim suscipit quis. Donec facilisis ante in orci finibus suscipit. Fusce vel urna commodo, cursus felis vel, vestibulum elit. Nam at sapien in odio ultrices fermentum eu sed elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce tempor risus velit, sit amet aliquet metus semper laoreet. Pellentesque accumsan diam eget luctus facilisis. Pellentesque nec lacus mi. Mauris venenatis mi est, ut fermentum ligula malesuada eget. Curabitur vestibulum nulla et mi imperdiet egestas. Sed ac aliquet libero, in congue purus. In hac habitasse platea dictumst.
<p />
Nunc a ornare arcu, vel molestie lorem. Maecenas ac metus eu augue pulvinar bibendum. Donec dignissim congue justo feugiat scelerisque. Nulla imperdiet cursus scelerisque. Vivamus sed malesuada ligula, at rutrum felis. Aenean eros sapien, sollicitudin et velit vitae, congue imperdiet quam. Fusce sodales iaculis interdum. Suspendisse vel dolor arcu.
<p />
Curabitur efficitur et felis eu malesuada. Ut at augue ipsum. Nulla efficitur dapibus dapibus. Nunc laoreet orci vitae diam tempus, sit amet facilisis justo feugiat. Sed faucibus non augue in tincidunt. Sed eu lorem et neque dignissim mattis. Donec dictum venenatis pretium. Nunc vitae elit suscipit, dictum libero eu, facilisis neque. Etiam vitae tortor ac mi tempor vulputate. Integer laoreet dictum consectetur. Nunc nec dignissim lectus, vel porttitor lorem. Sed mauris urna, tristique eu sapien dignissim, posuere iaculis sem.
    </div>
    
     <div class="footer">Copyright 2014 Software Design and Development</div>
    </div>
        </form>
</body>
</html>

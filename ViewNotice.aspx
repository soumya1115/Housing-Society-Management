<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewNotice.aspx.cs" Inherits="ViewNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous" />
     <link rel="stylesheet" href="member.css"  runat="server"/>
</head>
<body>
    <form id="form1" runat="server">
        <script src="#"></script>
    <script src="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous"></script>
 <section id="header">
        <div >
            <div style="float:left;"><a href="#"> <img  src="image/LOGO.png" class="logo" alt="#"/></a></div>
            <div style="float:left; padding:0 0 0 50px;"><h1 style="color:#e1e6ed;"> Housing Society Management</h1></div>
            <div style="float:left; width:10px; padding:20px 0 0 590px;"> <asp:Button ID="Button1" runat="server" CssClass="btn btn-default navbar-btn" Text="Log Out" OnClick="Button1_Click" /></div>
        </div>
</section>
        <div style="height:500px;">
            <h3> View Notifications </h3>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#afb7c4" BorderColor="Black" BorderStyle="Solid" Height="249px" Width="667px" Visible="False">
                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="Black"></asp:Label>
                        <br />
                         </asp:Panel>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewAllNotice.aspx" style="text-decoration:none; color:black; font-size:medium;">
                View All Notifications>> </asp:HyperLink> 
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/member.aspx" style="text-decoration:none; color:black; font-size:medium;"> <-GoBack </asp:HyperLink></div>
         <footer class="section-p1">
        
        <ul class="nav nav-tabs">
            <li  ><a  href="member.aspx">Profile</a></li>
           
            <li class="active"><a  href="ViewNotice.aspx">View Notice</a></li>
           <li class=""> <a href="#">Bill</a></li>
            <li><a  href="#">Hall Booking</a></li>
          
            </ul>
    </footer>
    </form>
</body>
</html>

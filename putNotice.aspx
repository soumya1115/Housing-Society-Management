<%@ Page Language="C#" AutoEventWireup="true" CodeFile="putNotice.aspx.cs" Inherits="putNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous" />
    <link rel="stylesheet"   href="~/AdminHome.css"  runat="server"/>
    <title> </title>
   
    <style type="text/css">
        .auto-style1 {
            width: 67%;
            height: 276px;
        }
        .auto-style2 {
            width: 208px;
            background-color: #C0C0C0;
        }
        .auto-style3 {
            width: 208px;
            height: 222px;
            background-color: #C0C0C0;
        }
        .auto-style4 {
            height: 222px;
            background-color: #C0C0C0;
        }
        .auto-style5 {
            background-color: #C0C0C0;
        }
        .column{
            float:left;
            padding:0 20px 0 20px;
            width:40%;

        }
        .auto-style6 {
            float: left;
            padding: 0 20px 0 20px;
            width: 72%;
        }
        .auto-style7 {
            float: left;
            padding: 0 20px 0 20px;
            width: 9%;
            height: 41px;
            margin-left: 47px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
   
</head>
<body">
    <form id="form1" runat="server">
        <script src="#"></script>
    <script src="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous"></script>
    
         <section id="header">
        <div >
            <div style="float:left;"><a href="#"> <img  src="image/LOGO.png" class="logo" alt="#"/></a></div>
            <div style="float:left; padding:0 0 0 50px;"><h1 style="color:#e1e6ed;"> Housing Society Management</h1></div>
            <div style="float:left; width:10px; padding:20px 0 0 590px;"> <asp:Button ID="Button4" CssClass="btn btn-default navbar-btn" runat="server" Text="log out" OnClick="Button4_Click" /></div>
        </div>
       
    </section>
        <section>
        <div>   
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Add notifications here"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><h3>Type Text </h3></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Height="210px" TextMode="MultiLine" Width="689px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Message can not be blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <div class="row">
                       <div class="auto-style6"> <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Size="Medium" ForeColor="White" Height="41px" Text="Send" Width="115px" OnClick="Button1_Click" /></div>
                       <div class="auto-style7"> <asp:Button ID="Button2" runat="server" BackColor="red" Text="Clear" ForeColor="White" CssClass="auto-style8" Height="39px" Width="68px" /></div>
                            </div>
                        <br />
                        <asp:Label ID="Label2" ForeColor="Green" Font-Size="Large" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
           </div>
            </section>
        <footer    class="section-p1">
       <ul class="nav nav-tabs">
           <li > <a href="AdminHomepage.aspx">Profile</a></li> 
           <li > <a  href="memberAdd.aspx" >Manage Member</a></li>
            <li class="active"><a  href="putNotice.aspx">Put Notice</a></li>
           <li> <a href="generateBill.aspx">Add Bill</a></li>
            <li><a  href="#">Hall Allocation</a></li>
          
            </ul>
       
        
    </footer> 
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHomepage.aspx.cs" Inherits="AdminHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title> Admin home page </title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous" />
     <link rel="stylesheet"   href="~/AdminHome.css"  runat="server"/>
     <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style: none;
    text-decoration: none;
    font-family: 'Spartan' sans-serif;
}


body {
    width: 100%;
}


#text {
    padding: 0 80px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
}

#image {
    background-repeat: no-repeat;
    background-position: top 25% right 0;
    background-size: cover;
   
}
.imgcontainer{
    padding:0 0 0 600px;
}
input[type=text], input[type=password]{
  width:100%;
  padding:12px 20px;
  margin:8px 0;
  display:inline-block;
  border:1px solid #ccc;
  box-sizing:border-box;
}
.auto-style1 {
           width: 700px;
           height: 60px;
       }
    </style>
</head>
<body>
     <script src="#"></script>
    <script src="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous"></script>
    <form id="form1" runat="server">
         <section id="header">
        <div >
            <div style="float:left;"><a href="#"> <img  src="image/LOGO.png" class="logo" alt="#"/></a></div>
            <div style="float:left; padding:0 0 0 50px;"><h1 style="color:#e1e6ed;"> Housing Society Management</h1></div>
            <div style="float:left; width:10px; padding:20px 0 0 590px;"> <asp:Button ID="Button1" CssClass="btn btn-default navbar-btn" runat="server" Text="log out" OnClick="Button1_Click" /></div>
        </div>
       
    </section>
         <div style="margin-left:350px; margin-top:0px;" class="auto-style1">
  <h3 style="text-align:center; background-color:lightgreen; padding:5px;"> Your Profile </h3>

        </div>
<div class="imgcontainer">
            <img  src="image/admin.png" alt="avatar" class="avatar"/>
        </div>
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Label"> Full Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            <div>
             <div style="float:left; width:500px;"><asp:Label ID="Label2" runat="server" Text="Label"> Username </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox> </div>
             <div style="float:right; width:500px;"><asp:Label ID="Label3" runat="server" Text="Label"> Email </asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></div>
             </div>
            </div>
     
        
       
   <footer    class="section-p1">
       <ul class="nav nav-tabs">
            <li class="active"> <a href="AdminHomepage.aspx">Profile</a></li>
           <li  > <a href="memberAdd.aspx" >Manage Member</a></li>
            <li><a  href="putNotice.aspx">Put Notice</a></li>
           <li> <a href="generateBill.aspx">Add Bill</a></li>
            <li><a  href="#">Hall Allocation</a></li>
          
            </ul>
       
        
    </footer>    
        
       
 </form>
</body>
</html>

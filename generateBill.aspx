<%@ Page Language="C#" AutoEventWireup="true" CodeFile="generateBill.aspx.cs" Inherits="generateBill" %>

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
     <link rel="stylesheet"   href="~/AdminHome.css"  runat="server"/>
    <style>
    * {
        padding:0px;
        box-sizing: border-box;
    }

    input[type=number], select, textarea{
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        resize: vertical;
    }
        input[type=text] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
        input[type=email]{
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
    label {
        padding: 12px 12px 12px 0;
        display: inline-block;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        
        float: right;
    }


    .container {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
        width:80%;
        align-self:center;
    }

    .col-25 {
        float: left;
        width: 25%;
        margin-top: 6px;
    }

    .col-75 {
        float: left;
        width: 75%;
        margin-top: 6px;
    }

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 600px) {
        .col-25, .col-75, input[type=submit] {
            width: 100%;
            margin-top: 0;
        }
    }
        .auto-style1 {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: 80%;
            align-self: center;
            height: 800px;
        }
        .auto-style2 {
            float: left;
            height: 33px;
        }
    </style>
</head>
<body>
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
        <section class="auto-style1">
            <center> <h3> Add Bill Here </h3></center>
            <div class="row">
                <div class="col-25">
                    <label for="Date"> Date: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox6" TextMode="Date" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="FlatMaintenance"> Flat maintenance: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="Wmain"> Water maintenance: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pmain"> Parking maintenance: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="fund"> Event fund: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="fund"> Total Bill: </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="TextBox5" ReadOnly="true" runat="server"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Send" />
        </section>
        <footer    class="section-p1">
       <ul class="nav nav-tabs">
           <li > <a href="AdminHomepage.aspx">Profile</a></li> 
           <li > <a  href="memberAdd.aspx" >Manage Member</a></li>
            <li><a  href="putNotice.aspx">Put Notice</a></li>
           <li class="active"> <a href="generateBill.aspx">Add Bill</a></li>
            <li><a  href="#">Hall Allocation</a></li>
          
            </ul>
       
        
    </footer> 
    </form>
</body>
</html>

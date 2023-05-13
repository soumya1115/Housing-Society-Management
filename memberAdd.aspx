

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="memberAdd.aspx.cs" Inherits="memberAdd" %>

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
            <div style="float:left; width:10px; padding:20px 0 0 590px;"> <asp:Button ID="Button2" runat="server" CssClass="btn btn-default navbar-btn" Text="Log out" /></div>
        </div>
       
    </section>
        <center> <h3> Add Member Here</h3></center>
        <div class="auto-style1">

           <!-- <div class="row">
                <div class="col-25">
                    <label for="FirstName"> First name </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </div>
            </div> --->
            <div class="row">
                <div class="col-25">
                    <label for="FullName"> Full Name </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Alphabets are allow in name" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
  
            <div class="row">
                <div class="col-25">
                    <label for="UserName"> User Name </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
             <div class="row">
                <div class="col-25">
            <label for="UserName"> Password </label> 
                    </div>
                <div class="col-75">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required" ControlToValidate="txtpassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
            </div>
               <div class="row">
                <div class="col-25">
                    <label for="email"> Email ID</label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="Fnumber"> Flat Number </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtFNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFNumber" ErrorMessage="Flat number is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
                       
           <div class="row">
                <div class="col-25">
                    <label for="number"> Mobile Number</label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtMobile" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid phone number" ControlToValidate="txtMobile" Display="Dynamic" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMobile" ErrorMessage="Phone Number is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <asp:Label ID="Label1" runat="server" Text="Label"> Gender</asp:Label>
                </div>
                <div class="col-75">
                    <asp:DropDownList ID="txtGender" runat="server">
                        <asp:ListItem>Please select some value</asp:ListItem>
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
 
                    </asp:DropDownList>
                </div>
            </div> <br />
            <div class="row">
                <div class="col-25">
                    <label for="age"> Age </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="occupation"> Occupation </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtOccu" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="income"> Monthly Income </label>
                </div>
                <div class="col-75">
                    <asp:TextBox ID="txtMonIn" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div>
               <div class="auto-style2"> <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="ADD" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" Height="38px" /></div>
              
               
            </div>
        <center><asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Larger" ForeColor="#006600"></asp:Label></center>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/AllMember.aspx" runat="server">View all members</asp:HyperLink>
    </div>
        
        <footer    class="section-p1">
       <ul class="nav nav-tabs">
            <li > <a href="AdminHomepage.aspx">Profile</a></li>
           <li class="active"> <a  href="memberAdd.aspx" >Manage Member</a></li>
            <li><a  href="putNotice.aspx">Put Notice</a></li>
           <li> <a href="generateBill.aspx">Add Bill</a></li>
            <li><a  href="#">Hall Allocation</a></li>
          
            </ul>
       
        
    </footer>  

    </form>
</body>
</html>

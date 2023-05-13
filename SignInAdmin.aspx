<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignInAdmin.aspx.cs" Inherits="SignInAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title> Housing Society Management </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous" />
     <link rel="stylesheet"  href="#"  runat="server"/>
   <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style: none;
    text-decoration: none;
    font-family: 'Spartan' sans-serif;
}

h1 {
    font-size: 50px;
    line-height: 64px;
    color: #222;
}

h2 {
    font-size: 46px;
    line-height: 54px;
    color: #222;
}

h3 {
    font-size: 36px;
    line-height: 54px;
    color: #222;
}

h4 {
    font-size: 20px;
    color: #e1e6ed;
}

h6 {
    font-size: 12px;
    font-weight: 700;
}

p {
    font-size: 16px;
    color: #d1d9e6;
    margin: 15px 0 20px 0;
}

.section-p1 {
    padding: 40px 80px;
}

.section-m1 {
    margin: 40px 0;
}

body {
    width: 100%;
}
#header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: black;
    box-shadow: 0 5px 15px rgba(0,0,0,0.06);
    z-index: 999;
    position: sticky;
    top: 0;
    left: 0;
}
li{
    float:left;
}
li a {
    display:block;
    text-align:center;
    color: white;
    text-decoration: none;
    padding: 15px;
}
.box1 {
    width: 50%;
    height: 850px;
    float: left;
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
#Button1{
background-color:#4CAF50;
color:white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;
}
button:hover{
    opacity:0.8;
}
.cancelbtn{
    width:auto;
    padding: 10px 18px;
    background-color:#f44336;
}
footer {
    background-color: black;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    color: white;
}

    footer .col {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-bottom: 20px;
    }

    footer .logo {
        margin-bottom: 30px;
    }

    footer h4 {
        font-size: 14px;
        padding-bottom: 20px;
    }

    footer p {
        font-size: 13px;
        margin: 0 0 8px 0;
    }

    footer a {
        font-size: 13px;
        text-decoration: none;
        color: #d1d9e6;
        margin-bottom: 10px;
    }

    footer .follow {
        margin-top: 20px;
    }

        footer .follow i {
            color: #465b52;
            padding-right: 4px;
            cursor: pointer;
        }

    footer .install .row img {
        border: 1px solid #088178;
        border-radius: 6px;
    }

    footer .install img {
        margin: 10px 0 15px 0;
    }

    footer .follow i:hover,
    footer a:hover {
        color: #088178;
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
        </div>
        <div class="home">
            <ul class="nav nav-tabs">
           <li > <a href="AdminLogin.aspx" >Home </a></li>
            <li><a href="about.aspx"> About us</a></li>
           <li> <a href="contact.aspx"> Contact </a></li>
            <li><a  href="SignUp.aspx">Admin SignUp</a></li>
           <li class="active" ><a  href="SignInAdmin.aspx">Admin SignIn</a></li>
<li ><a  href="SignInMember.aspx"> Member SignIn</a> </li>
            </ul>
        </div>
    </section>
        <!-----this is form section--->
        
        <div style="width:700px; margin-left:350px; margin-top:0;">
          <h3 style="text-align:center; background-color:lightgreen; padding:5px;"> Admin Login </h3>

        </div>
        <div class="imgcontainer">
            <img  src="image/admin.png" alt="avatar" class="avatar"/>
        </div>
        <div class="container">
            <asp:Label ID="Label1" For="uname" runat="server" Text="Label"><b> UserName</b></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your username" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" For="psw" runat="server" Text="Label"><b> Password</b></asp:Label>
            <asp:TextBox ID="txtpass" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPass" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Login" type="submit" Font-Size="Larger" OnClick="Button1_Click" />
            <label>
                <asp:CheckBox ID="CheckBox1" runat="server" font-size="Larger" Text="Remember me"/>
            </label>
        </div>
        <div class="container" style="background-color:#f1f1f1;">
            <asp:Button ID="Button2" runat="server" Text="Clear" BackColor="Red" ForeColor="White" Height="44px" OnClick="Button2_Click" Width="111px" />
            <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/SignUp.aspx">Sign Up </asp:HyperLink>
            </div>
        <br />
        <div style="padding:0 200px 0 150px; font-size:large; font-weight:bold;">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotPassAdmin.aspx">Forgot Password?</asp:HyperLink>
            </div>

        <!-----form section ends--->
        <footer class="section-p1">
        
        <div class="col">
            <img class="logo"  src="image/LOGO.png" alt="#" />
            <h4> Contact</h4>
  
            <p><strong>Address:</strong>90, Naigaum Cross Road, Dadar(east), Mumbai, Maharashtra </p>
            <p><strong>Phone:</strong>02224113268 </p>
            <p><strong>Hours:</strong>9:00 to 16:00 Mon-Sat </p>
            
        </div>
        <div class="col">
            <h4> About </h4>
            <a href="#"> About us</a>
           <a href="PrivacyPolicy.aspx"> Privacy Policy</a>
            <a href="termCondition.aspx"> Terms & Conditions</a>
            <a href="#"> Contact us</a>
        </div>
        <div class="col">
            <h4> My account </h4>
            <a  href="SignUp.aspx">Admin SignUp</a>
            <a  href="SignInAdmin.aspx">Admin SignIn</a>
            <a  href="SignInMember.aspx">Member SignIn</a>
        </div>
        <div class="follow">
            <h4> Folllow us </h4>

            <div class="icon">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-pinterest-p"></i>
            </div>
             <br />
            <br />
            <p> Secured Payment Gateways </p>
            <img src="image/paypal.jpg" />
        </div>
        <div class="col payment">
            
        </div>
        
    </footer>
    </form>
</body>
</html>

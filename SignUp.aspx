<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Sign Up </title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
    color: black;
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
input[type=text], input[type=password], input[type=email]{
  width:100%;
  padding:12px 20px;
  margin:8px 0;
  display:inline-block;
  border:1px solid #ccc;
  box-sizing:border-box;
}
#Button1{
       border-style: none;
           border-color: inherit;
           border-width: medium;
           background-color:#4CAF50;
           color:white;
           padding: 14px 20px;
           margin: 8px 0 8px 23px;
           cursor: pointer;
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
    <script>
        var name = document.forms['SignUp']['Usame']
        var errors = document.getElementById['Label1'];
        var letters = /^[a-zA-Z]$/;
        function Validation() {
            if (name.value.match(letters)) {
                Label1.innerHtml = "name should not contain number"
                return false;
            }
            return true;
        }
    </script>

      <form id="form1" name="SignUp" runat="server">   
    <script src="#"></script>
    <script src="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous"></script>

    <section id="header">
        <div >
            <div style="float:left;"><a href="#"> <img  src="image/LOGO.png" class="logo" alt="#"/></a></div>
            <div style="float:left; padding:0 0 0 50px;"><h1 style="color:#e1e6ed;"> Housing Society Management</h1></div>
        </div>
        <div class="home">
            <ul class="nav nav-tabs">
           <li > <a  href="AdminLogin.aspx" >Home </a></li>
            <li><a href="about.aspx"> About us</a></li>
           <li> <a href="contact.aspx"> Contact </a></li>
            <li class="active"><a  href="SignUp.aspx">Admin SignUp</a></li>
           <li><a  href="SignInAdmin.aspx">Admin SignIn</a></li>
                <li><a  href="SignInMember.aspx"> Member SignIn</a> </li>
            </ul>
        </div>
    </section>
    <div class="container">
        <div style="width:700px; margin-left:200px; margin-top:0;">
          <h3 style="text-align:center; background-color:lightgreen; padding:5px;"> Admin SignUp </h3>
       </div>
        <br />
        <br />
        <p style="font-size:medium;"> Please fill this form to create an account </p>
        <label class="col-xs-11"> <b> Your full name </b>
       
        </label>
        <div class="col-xs-11">
            <asp:TextBox ID="txtName" name="Name" runat="server" placeholder="enter your name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtName" CssClass="text-danger" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name Fields Only Contains Alphabets" Display="Dynamic" ControlToValidate="txtName" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$"></asp:RegularExpressionValidator>
            
        </div>
        
        <label class="col-xs-11"> <b> Username </b></label>
        <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" placeholder="enter your username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your Username" ControlToValidate="txtUname" CssClass="text-danger" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        
      <label class="col-xs-11"> <b> Password </b></label>
        <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" placeholder="enter your password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your Password" ControlToValidate="txtPass" CssClass="text-danger" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        
        <label class="col-xs-11"> <b> Confirm password </b></label>
        <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" placeholder="confirm your password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please confirm your Password" ControlToValidate="txtCPass" CssClass="text-danger" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
           
      <label class="col-xs-11"> <b> Email </b></label>
        <div class="col-xs-11" >
            <asp:TextBox ID="txtEmail" runat="server" placeholder="enter your email" Height="50px" TextMode="Email" Width="1013px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your Email" ControlToValidate="txtEmail" CssClass="text-danger" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

        <div style="padding:0;">
        <div class="col-xs-11" style="float:left;">
            <asp:Button ID="txtsignup" backcolor="green" Font-Size="Medium" CssClass="btn btn-success" runat="server" Text="SignUp" OnClick="txtsignup_Click1" />
            </div>
            <div style="float:right; " >
                <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Size="Medium" style="padding:0;" Text="Clear" OnClick="Button2_Click1" CssClass="btn btn-danger" Height="37px" width="70px"/>

            </div>
        </div>
    </div>
          <br />
          <br />
          <footer class="section-p1">
        
        <div class="col">
            <img class="logo"  src="image/LOGO.png" alt="#" />
            <h4> Contact</h4>
  
            <h5><strong>Address:</strong>90, Naigaum Cross Road, Dadar(east), Mumbai, Maharashtra </h5>
            <h5><strong>Phone:</strong>02224113268 </h5>
            <h5><strong>Hours:</strong>9:00 to 16:00 Mon-Sat </h5>
            
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
            <p style="color:white;"> Secured Payment Gateways </p>
            <img src="image/paypal.jpg" />
        </div>
        <div class="col payment">
            
        </div>
        
    </footer>
    </form>
</body>
</html>

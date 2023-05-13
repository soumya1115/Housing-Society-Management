<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>


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
     <link rel="stylesheet" href="mainpage.css"  runat="server"/>
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
           <li class="active"> <a  href="AdminLogin.aspx" >Home </a></li>
            <li><a href="about.aspx"> About us</a></li>
           <li> <a href="contact.aspx"> Contact </a></li>
            <li><a  href="SignUp.aspx">Admin SignUp</a></li>
           <li><a  href="SignInAdmin.aspx">Admin SignIn</a></li>
           <li><a  href="SignInMember.aspx"> Member SignIn</a> </li>
            </ul>
        </div>
    </section>
    <section>
        <div class="box">
            <div class="box1" id="text">
                <h2> Managing your society's </h2>
                <h3>Work is now</h3>
                <h3> Easy with us  </h3>
                <h3> For joinning us</h3>
                <h2>Register now</h2>
                
            </div>
            <div class="box1" id="image"> <img src="image/frontimage.jpg" /> </div>
        </div>
    </section>
    <sectin id="feature" class="section-p1">
        
        <div  class="fe-box">
          <img  src="image/EasyToUse.jpg" /> 
            <h6> Easy to use</h6>
        </div>
        <div class="fe-box">
          <img src="image/pocketFriendly.jpg" />
            <h6> Pocket Friendly</h6>
        </div>
        <div class="fe-box">
            <img src="image/secured.jpg" />
            <h6> Secured </h6>
        </div>
        <div class="fe-box">
            <img  src="image/24support.jpg" />
            <h6> 24 hours of supports</h6>
        </div>
    </sectin> 
 
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


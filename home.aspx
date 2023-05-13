<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
     <link rel="stylesheet"  href="home.css"  runat="server"/>
    
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
        </section>

       <div class="loginOption">
        <h2> <center> Login as</center> </h2>

           <ul>
               <li><a  href="AdminLogin.aspx"><h3> Admin</h3>   </a> </li>
               <li><a  href="#"><h3> Member </h3> </a> </li>
           </ul>
       </div>

    <footer class="section-p1">
        
        <div class="col">
            <img class="logo"  src="image/LOGO.png" alt="#" />
</div> <div>

            <h4> Contact</h4>
  
            <p><strong>Address:</strong>90, Naigaum Cross Road, Dadar(east), Mumbai, Maharashtra </p>
            <p><strong>Phone:</strong>02224113268 </p>
            <p><strong>Hours:</strong>9:00 to 16:00 Mon-Sat </p>
            
        </div>
        <div class="col">
            <h4> About </h4>
            <a href="#"> About us</a>
            <a href="#"> Privacy Policy</a>
            <a href="#"> Terms & Conditions</a>
            <a href="#"> Contact us</a>
        </div>
        
        <div class="follow">
            <h4> Folllow us </h4>

            <div class="icon">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-pinterest-p"></i>
            </div>
            
        </div>
        <div class="col payment">
            
        </div>
        
    </footer>
    </form>
</body>
</html>

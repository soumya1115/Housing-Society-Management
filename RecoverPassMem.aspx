<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassMem.aspx.cs" Inherits="RecoverPassMem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Reset Password </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://kit.fontawesome.com/84a5a802d1.js" crossorigin="anonymous" />
    <style>
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
</section>
        <div>
<div class="container">
    <div class="form-horizontal">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/SignInAdmin.aspx"><<-BACK</asp:HyperLink>
        <center><h2>Recover Password </h2></center>
        <hr />
        <h3></h3>
        <div class="form-group"> 
          <asp:Label ID="lblmsg" CssClass="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="New Password" Visible="False"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" CssClass="Text-danger" runat="server" ErrorMessage="Enter your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblConfirmPass" CssClass="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="Text-danger" runat="server" ErrorMessage="Enter Confirm your new Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm password does not match...try again" ControlToCompare="txtNewPass" ControlToValidate="txtConfirmPass" ForeColor="#CC0000"></asp:CompareValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" OnClick="btnResetPass_Click" />
                
            </div>
        </div>
    </div>
        </div>



        </div> 
        
    </form>
</body>
</html>

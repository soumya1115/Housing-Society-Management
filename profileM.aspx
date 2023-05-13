<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profileM.aspx.cs" Inherits="profileM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <form id="form1" runat="server">
  <div style="margin-left:350px; margin-top:0px;" class="auto-style1">
  <h3 style="text-align:center; background-color:lightgreen; padding:5px;"> Your Profile </h3>

        </div>
        <div class="imgcontainer">
            <img  src="image/Icon-membership.png" alt="avatar" class="avatar"/>
        </div>
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Label"> Full Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            <div>
             <div style="float:left; width:675px;"><asp:Label ID="Label2" runat="server" Text="Label"> Username </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox> </div>
             <div style="float:right; width:675px;"><asp:Label ID="Label3" runat="server" Text="Label"> Flat Number</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></div>
             </div>
            <div>
             <div style="float:left; width:675px;"><asp:Label ID="Label4" runat="server" Text="Label"> Email ID</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox> </div>
             <div style="float:right; width:675px;"><asp:Label ID="Label5" runat="server" Text="Label"> Mobile Number </asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox> </div>
             </div>
        </div>
    </form>
</body>
</html>

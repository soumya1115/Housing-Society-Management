<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllNotice.aspx.cs" Inherits="ViewAllNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> View your all Notifications </h2>
        <asp:GridView ID="Notice" runat="server" AutoGenerateColumns="False" Height="184px" Width="697px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"> 
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
             <asp:BoundField DataField="message" HeaderText="Message" />

           </Columns>
            <Columns>
                <asp:BoundField  DataField="RequestDateTime" HeaderText="Date"/>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
           
        </div>
        
    </form>
</body>
</html>

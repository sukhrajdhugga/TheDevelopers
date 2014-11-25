<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orientation.aspx.cs" Inherits="Orientation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;height:20%;">
            <div style="width:15%;float:left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Lafarge.png" Width="150px" /></div>
       <div style="height:70px; width:85%;float:left;"> <div class="bannerdef">Adding Employee Details</div></div>
            </div>
    <div>
    
        <br />
        <div class="abc">
            <div class="def">Orientation</div>
            <div class="box-con-cen">
            <ul>
                
                <li>Company Name</li>
                <li>
                    <asp:TextBox ID="TextBox1" runat="server" required="required" placeholder="Company Name"></asp:TextBox></li>
        
        <li>First Name</li>
                <li>
                    <asp:TextBox ID="TextBox2" runat="server" required="required" placeholder="First Name"></asp:TextBox></li>
                <li>Last Name</li>
                <li>
                    <asp:TextBox ID="TextBox3" runat="server" required="required" placeholder="Last Name"></asp:TextBox></li>
                
                <li>Phone</li>
                <li>
                    <asp:TextBox ID="TextBox7" runat="server" required="required" placeholder="Phone"></asp:TextBox></li>
                <li>Email</li>
                <li>
                    <asp:TextBox ID="TextBox8" runat="server" required="required" placeholder="Email"></asp:TextBox></li>
                <li>Site</li>
                <li>
                    <asp:TextBox ID="TextBox9" runat="server" required="required" placeholder="Email"></asp:TextBox></li>
                <li><asp:Button ID="Button1" runat="server" Text="Submit" class="buttonstyle" OnClick="Button1_Click" /></li>
                <li><asp:Button ID="Button2" runat="server" Text="Reset" class="buttonstyle" OnClick="Button2_Click"/></li>
                </ul>
            
                </div>
        </div>
    </div>
    </form>
</body>
</html>

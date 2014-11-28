<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="css/style.css" rel="stylesheet"  />
    <meta charset="utf-8" />
    <meta name ="viewport" content ="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta charset="utf-8" />

</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;height:20%;">
            <div style="width:15%;float:left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Lafarge.png" Width="122px" /></div>
       <div style="height:70px; width:85%;float:left;"> <div class="bannerdef">Admin Login</div></div>
            </div>
        <br /><br />
    <div>
    <div class="abc">
            <div class="def">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter your username and password</div>
            <div class="box-con-cen">
            <ul>
                
                <li>UserName</li>
                <li>
                    <asp:TextBox ID="TextBox1" runat="server" required="required" placeholder="UserName"></asp:TextBox></li>
        
        <li>Password</li>
                <li>
                    <asp:TextBox ID="TextBox2" runat="server" required="required" placeholder="Password" Height="20px" TextMode="Password" Width="256px"></asp:TextBox></li>
                
                <li><asp:Button ID="Button1" runat="server" Text="Login" class="buttonstyle" OnClick="Button1_Click" /></li>
                <li><asp:Button ID="Button2" runat="server" Text="Reset" class="buttonstyle" OnClick="Button2_Click"/></li>
                </ul>
            
                </div>
        </div>
    </div>
    </form>
</body>
</html>

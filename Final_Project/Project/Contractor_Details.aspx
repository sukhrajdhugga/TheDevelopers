<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contractor_Details.aspx.cs" Inherits="Contractor_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contractor Details</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;height:20%;">
            <div style="width:15%;float:left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Lafarge.png" Width="150px" /></div>
       <div style="height:70px; width:85%;float:left;"> <div class="bannerdef">Contractor Time Details</div></div>
            </div>
    <div>

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" />

    <meta charset="utf-8" />
    <meta name ="viewport" content ="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; height:27%;">
            <div style="width:15%; float:left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Lafarge.png" Width="150px" /></div>
            <div class="bannerdef">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attendance Details</div>
            </div>
       
        
    <div class="defaultabc">    
    <div class="defaultdef">
        <div class="bannersty">Employee Login Details</div><br />
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="256px" AutoPostBack="True"></asp:DropDownList>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="20" Width="256" AutoPostBack="True"></asp:DropDownList>
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Sign IN" OnClick="Button1_Click" class="buttonstyle" style="float:left;"/>
        <asp:Button ID="Button3" runat="server" Text="Sign OUT" class="buttonstyle" style="float:left;" OnClick="Button3_Click"/>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Orienatation" OnClick="Button2_Click" class="buttonstyle" style="float:left;"/>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SendMail" class="buttonstyle"/><br /><a href="mailto:thedevelopers_ufv_students@yahoo.com">Add Email</a>

        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="View Site Details" CssClass="buttonstyle" OnClick="Button5_Click" />
    </div>
        <div class="defaultghi">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="105%">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <div class="defaultdef">
            <div class="bannersty">Contractor Login Details</div><br />
        <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="256px" AutoPostBack="True"></asp:DropDownList>
        <br /><br />
        <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="20" Width="256"></asp:DropDownList>
        <br /><br /><br />
        <asp:Button ID="Button6" runat="server" Text="Sign IN" class="buttonstyle" style="float:left;" OnClick="Button6_Click"/>
        <asp:Button ID="Button7" runat="server" Text="Sign OUT" class="buttonstyle" style="float:left;" OnClick="Button7_Click"/>
            <br />
        <asp:Button ID="Button8" runat="server" Text="New Contractor" class="buttonstyle" style="float:left;" OnClick="Button8_Click"/>
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" CssClass="buttonstyle" Text="Contractor_Time" />
            
    </div></div>
    
        
    </form>
</body>
</html>

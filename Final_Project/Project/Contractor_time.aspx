<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contractor_time.aspx.cs" Inherits="Contractor_time" %>

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
       <div style="height:70px; width:85%;float:left;"> <div class="bannerdef">Contractor Time Details</div></div>
            </div>
        <br /><br />
    <div style="margin-top:10%;">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="SignInTime" HeaderText="SignInTime" SortExpression="SignInTime" />
                <asp:BoundField DataField="SignOutTime" HeaderText="SignOutTime" SortExpression="SignOutTime" />
                <asp:CommandField ShowDeleteButton="False" ShowEditButton="False" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contractor_login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contractor_login] ([Firstname], [Lastname], [date], [SignInTime], [SignOutTime]) VALUES (@Firstname, @Lastname, @date, @SignInTime, @SignOutTime)" SelectCommand="SELECT * FROM [Contractor_login]" UpdateCommand="UPDATE [Contractor_login] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [date] = @date, [SignInTime] = @SignInTime, [SignOutTime] = @SignOutTime WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter DbType="Time" Name="SignInTime" />
                <asp:Parameter DbType="Time" Name="SignOutTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter DbType="Time" Name="SignInTime" />
                <asp:Parameter DbType="Time" Name="SignOutTime" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DeepakMishraWebAppMVC.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:dodgerblue;">
    <form id="form1" runat="server">
    <div class="container">
        <table style="width:100%;">
            <tr>
                <td>

                </td>
                <td>
                    <asp:Label ID="lblWelcome" runat="server" Text="" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger btn-lg" OnClick="btnLogout_Click" />
                </td>
                <td>
                   
                </td>
            </tr>
        </table>
         <div class="pull-right" style="width:100%;">
            <a class=" pull-right btn btn-info btn-sm" href="IssueTicket.aspx" target="_blank">Need Help? Click here to get support and Raise a ticket</a>
        </div>
    <h1>This is my home</h1>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
    </div>
        <script src="Scripts/bootstrap.min.js"></script>
        <footer style="bottom:0px;position:fixed;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.|Developer: Deepak Mishra</p>
        </footer>
    </form>
</body>
</html>

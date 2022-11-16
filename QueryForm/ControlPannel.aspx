<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPannel.aspx.cs" Inherits="QueryForm.ControlPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Pannel</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color: dodgerblue; color: maroon;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="pull-right" style="width:100%;">
            <a class=" pull-right btn btn-info btn-sm" href="IssueTicket.aspx" target="_blank">Need Help? Click here to get support and Raise a ticket</a>
        </div>
            <h3>User Control Management</h3>
            <h5>Update User New Password</h5>
            <table>
                <tr><td>Select User</td><td><asp:DropDownList ID="ddlUserList" runat="server" CssClass="form-control"></asp:DropDownList> </td></tr>
                <tr><td>Enter New Password</td><td><asp:TextBox ID="txtUpdatePassword" runat="server" CssClass="form-control" BackColor="LightYellow" TextMode="Password" placeholder="Enter new password"></asp:TextBox></td></tr>
                <tr><td></td><td><asp:Button ID="btnUpdatePassword" runat="server" Text="Update New Password" CssClass="btn btn-success btn-lg" OnClick="btnUpdatePassword_Click" /></td></tr>
            </table>
            <div class="container">
                <asp:Label ID="lblerror1" runat="server" Text="" ForeColor="Maroon" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="lblsucess1" runat="server" Text="" ForeColor="Green" Font-Size="Medium"></asp:Label>
            </div>
             <h5>Activate/Deactivate User ID</h5>
            <table>
                <tr><td>Select User</td><td><asp:DropDownList ID="ddlUserlist2" runat="server" CssClass="form-control"></asp:DropDownList> </td><td>Select Action</td>
                    <td><asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">-Select Action-</asp:ListItem>
                    <asp:ListItem Value="1">Activate</asp:ListItem>
                    <asp:ListItem Value="2">Deactivate</asp:ListItem>
                    </asp:DropDownList></td></tr>
                
                <tr><td></td><td><asp:Button ID="btnUpdateStatus" runat="server" Text="Update Status" CssClass="btn btn-success btn-lg" OnClick="btnUpdateStatus_Click" /></td></tr>
            </table>
            <div class="container">
                <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Maroon" Font-Size="Medium"></asp:Label>
            </div>
            <h3>Registered User List</h3>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
         <footer style="bottom:0px;position:fixed;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.</p>
        </footer>
        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>

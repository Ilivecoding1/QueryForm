<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="DeepakMishraWebAppMVC.UserRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New User</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:dodgerblue;">
    <form id="form1" runat="server">
    <div class="container">
        <h1>Create New User<a href="ControlPannel.aspx" target="_blank">.</a></h1>
         <div class="pull-right" style="width:100%;">
            <a class=" pull-right btn btn-info btn-sm" href="IssueTicket.aspx" target="_blank">Need Help? Click here to get support and Raise a ticket</a>
        </div>
    <table>
        <tr><td>Enter Username:</td><td><asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" CssClass="form-control" BackColor="LightYellow"></asp:TextBox></td></tr>
        <tr><td>Enter Password:</td><td><asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" CssClass="form-control" BackColor="LightYellow" TextMode="Password"></asp:TextBox></td></tr>
        <tr><td></td><td><asp:Button ID="btnSave" runat="server" Text="Register/Save" CssClass="btn btn-success btn-lg" OnClick="btnSave_Click" /></td>
        </tr>
    </table>
        <table>
            <tr>
                <td>
                     <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Maroon" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <a href="Login.aspx" target="_blank">Click here to go to Login page</a>
    </div>
        <footer style="bottom:0px;position:fixed;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.</p>
        </footer>
        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>

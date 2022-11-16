<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueTicket.aspx.cs" Inherits="QueryForm.IssueTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Raise Ticket</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color: dodgerblue; color: maroon;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="container" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                <h3>Support System-Raise A Ticket</h3>
                <table>
                    <tr>
                        <td>Your Name</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Email</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Your Phone</td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>Subject</td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Issue Related to</td>
                        <td>
                            <asp:DropDownList ID="ddlIssueCat" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0" Text="-Please Select-" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Query Form Related"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Login Related"></asp:ListItem>
                                <asp:ListItem Value="3" Text="New User Create Related"></asp:ListItem>
                                <asp:ListItem Value="4" Text="Dashboard Related"></asp:ListItem>
                                <asp:ListItem Value="5" Text="Forgot Username"></asp:ListItem>
                                <asp:ListItem Value="6" Text="Forgot Password"></asp:ListItem>
                                <asp:ListItem Value="7" Text="Others"></asp:ListItem>

                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Priority Level</td>
                        <td>
                            <asp:DropDownList ID="ddlSavLevel" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0" Text="-Please Select-" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" Text="High"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Medium"></asp:ListItem>
                                <asp:ListItem Value="3" Text="Low"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Attachments</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Query Description</td>
                        <td>
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="500" Height="100px" Width="300px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTicketNumber" runat="server" Text="" Visible="false"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>  </td>
                        <td>
                            <asp:Button ID="btnSendQuery" runat="server" Text="Raise Ticket" OnClick="btnSendQuery_Click" CssClass="btn btn-success btn-lg" /></td>
                    </tr>
                </table>
                <table>

                    <tr>
                        <td>

                            <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                    </tr>

                </table>
            </div>
        </div>
        <footer style="bottom:0px;position:fixed;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.</p>
        </footer>
        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>

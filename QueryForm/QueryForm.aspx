<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryForm.aspx.cs" Inherits="DeepakMishraWebAppMVC.QueryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Store Enquiry Form</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body style="background-color:dodgerblue;">
    <form id="form1" runat="server">
    
        <div class="container">
            <table style="width:100%;">
                <tr>
                                        <td>
<h1>Query Form</h1>
                    </td>
                    <td><div class="img-rounded" style="background-image:url(storehome.jpg);width:30%;height:30%;"></div></td>

                </tr>
            </table>
     <div class="pull-right" style="width:100%;">
            <a class=" pull-right btn btn-info btn-sm" href="IssueTicket.aspx" target="_blank">Need Help? Click here to get support and Raise a ticket</a>
        </div>
    <table>

        <tr>
            <td">
                <table>
        <tr><td style="font-size:small;">*Required</td><td>
            </td></tr>
        <tr><td></td><td style="font-size:medium;">Fabricator Name*</td></tr>
        <tr><td></td><td style="font-size:medium;"><asp:TextBox ID="txtFabricatorName" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">Registered Phone Number*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtPhone" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">Name of the person Available of store*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtPersonName" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">Store Name Name*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtStoreName" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">Complete Address*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtAddress" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">City*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtCity" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
        <tr><td></td><td style="font-size:medium;">State*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtState" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
         <tr><td></td><td style="font-size:medium;">Pin code*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtPincode" runat="server" placeholder="Your Answer" BackColor="LightYellow" CssClass="form-control"></asp:TextBox></td></tr>
        <tr><td></td><td style="font-size:medium;">Store Front Picture*</td></tr>
        <tr><td></td><td><asp:FileUpload ID="StoreFrontUPload" runat="server" CssClass="form-control" /></td></tr>
        <tr><td></td><td style="font-size:medium;">Poster Long Shot*</td></tr>
        <tr><td></td><td><asp:FileUpload ID="PosterLongUpload" runat="server" CssClass="form-control"/></td></tr>
        <tr><td></td><td style="font-size:medium;">Poster Close Shot*</td></tr>
        <tr><td></td><td><asp:FileUpload ID="PosterCLoseUpload" runat="server" CssClass="form-control"/></td></tr>
        <tr><td></td><td style="font-size:medium;">Gifts (Earphone, Notepad, Pen) & installed app photograph with fabricator Long Shot*</td></tr>
        <tr><td></td><td><asp:FileUpload ID="GiftsUpload" runat="server" CssClass="form-control"/></td></tr>
        <tr><td></td><td style="font-size:medium;">Installed app on the fabricator profile page with fabricator) Close Shot*</td></tr>
        <tr><td></td><td><asp:FileUpload ID="InstallAppUpload" runat="server" CssClass="form-control"/></td></tr>
        <tr><td></td><td style="font-size:medium;">Remarks, If any*</td></tr>
        <tr><td></td><td><asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Height="100" Width="700"></asp:TextBox></td></tr>
       
        <tr><td></td><td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-success btn-lg" /></td>
            <td>
                <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Maroon" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr><td><a href="Login.aspx" target="_blank">Click here to Login</a></td></tr>
    </table>
            </td>
           <%-- <td style="width:80%;height:80%;">
              

              </div>
            </td>--%>
        </tr>
    </table>
            <div class="container">
                
            </div>
            
    </div>
    <footer style="bottom:0px;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.</p>
        </footer>
        <script src="Scripts/bootstrap.min.js"></script>
    </form>

</body>
</html>

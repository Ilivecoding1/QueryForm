<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="DeepakMishraWebAppMVC.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>Oops! something went wrong server down, please contact site admin. Click on the link on this page to get help.</h1>
         <div class="pull-right" style="width:100%;">
            <a class=" pull-right btn btn-info btn-sm" href="IssueTicket.aspx" target="_blank">Need Help? Click here to get support and Raise a ticket</a>
        </div>
    </div>
        <footer style="bottom:0px;position:fixed;color:maroon;text-align:center;">
            <p>Copyright&amp 2021|All Rights reserved.|Designed &amp Maintained by Cloud Wings Tech Solutions.|Author&amp Developer: Deepak Mishra</p>
        </footer>
         <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace QueryForm
{
    public partial class IssueTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendQuery_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtEmail.Text == "" || txtPhone.Text == "" || ddlIssueCat.SelectedIndex == 0 || ddlSavLevel.SelectedIndex == 0 || txtSubject.Text == "" || txtDescription.Text == "")
            {
                lblError.Text = "";
                lblError.Text = "Please Fill your Name,Email,Phone,Department,Subject and Problem Description and attach supporting documents if any then click on Raise Ticket.";
            }
            else
            {
                sendTicketEmail();
            }
        }
        private void sendTicketEmail()
        {

            Random r = new Random();
            int num = r.Next(1001, 9999);
            lblTicketNumber.Text = num.ToString();
            //Session["otp"] = TextBox1.Text.Trim().ToString();
            //Session["ticketnumber"] = lblTicketNumber.Text.Trim().ToString();
            string tat = string.Empty;
            if (ddlSavLevel.SelectedIndex == 1)
            {
                tat = "1 Hour";
            }
            else if (ddlSavLevel.SelectedIndex == 2)
            {
                tat = "24 Hour";
            }
            else if (ddlSavLevel.SelectedIndex == 3)
            {
                tat = "48 Hour";
            }

            try
            {

                //string otp = Session["otp"].ToString().Trim();
                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("mmcdeepakmishra@gmail.com");
                mail.To.Add(new MailAddress("pjdeepakmishra@gmail.com"));

                mail.Subject = ddlSavLevel.SelectedItem.Text + "_" + "New Ticket Raised with ticket Number_" + lblTicketNumber.Text + "_" + txtSubject.Text;
                mail.Body = "Name=" + txtName.Text + "\n" + "Email=" + txtEmail.Text + "\n" + "Phone=" + txtPhone.Text + "\n" +  "Category=" + ddlIssueCat.SelectedItem.Text + "\n" + "Priority=" + ddlSavLevel.SelectedItem.Text + "\n" + "Description=" + txtDescription.Text;
                if (FileUpload1.HasFile)
                {
                    //string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
                }
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";//port no 25 for godaddy domain and host will be relay-hosting.secureserver.net and enable ssl will be false.
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                System.Net.NetworkCredential credential = new System.Net.NetworkCredential("mmcdeepakmishra@gmail.com", "Admin@123");
                smtp.Credentials = credential;
                smtp.EnableSsl = true;
                smtp.Send(mail);
                lblSuccess.Text = "";
                lblError.Text = "";
                lblSuccess.Text = "You have successfully raised a ticket with ticket number-" + "  <b>" + lblTicketNumber.Text + "</b>  " + ",Please use this ticket/reference number during the entire conversation, You will also get an email with same Ticket number.";
                ////////////////////
                try
                {
                    MailMessage returnmail = new MailMessage();

                    returnmail.From = new MailAddress("mmcdeepakmishra@gmail.com");
                    returnmail.To.Add(new MailAddress(txtEmail.Text));

                    returnmail.Subject = "New Ticket Raised with ticket Number_" + lblTicketNumber.Text + "_" + txtSubject.Text;
                    returnmail.Body = "You have successfully raised a ticket with ticket number-" + "  <b>" + lblTicketNumber.Text + "</b>  " + "\nPlease use this ticket/reference number during the entire conversation. One of our executive will be get in touch with you in. " + "<b>" + tat + "</b>";

                    returnmail.IsBodyHtml = true;
                    SmtpClient newsmtp = new SmtpClient();
                    newsmtp.Host = "smtp.gmail.com";//port no 25 for godaddy domain and host will be relay-hosting.secureserver.net and enable ssl will be false.
                    newsmtp.Port = 587;
                    newsmtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    System.Net.NetworkCredential newcredential = new System.Net.NetworkCredential("mmcdeepakmishra@gmail.com", "Admin@123");
                    newsmtp.Credentials = newcredential;
                    newsmtp.EnableSsl = true;
                    newsmtp.Send(returnmail);
                }
                catch (Exception ex)
                {

                }
                //////////////////////
                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtSubject.Text = "";
                txtDescription.Text = "";
                ddlIssueCat.SelectedIndex = 0;
                ddlSavLevel.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                lblError.Text = "";
                lblSuccess.Text = "";
                lblError.Text = "Faild to Raise a Ticket at this moment. " + ex;

            }

        }
    }
}
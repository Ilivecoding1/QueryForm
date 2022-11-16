using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DeepakMishraWebAppMVC
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string dateInString = "2021/12/01";

            DateTime startDate = DateTime.Parse(dateInString);
            DateTime expiryDate = startDate.AddDays(30);
            if (DateTime.Now > expiryDate)
            {


                Response.Redirect("Error.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                lblError.Text = "";
                lblSuccessMessage.Text = "";
                lblError.Text = "Username and Password Required.";
            }
            else
            {

                if (myconn.State == ConnectionState.Closed)
                    myconn.Open();
                var status =string.Empty;
                SqlCommand cmdcheckactivestatus = new SqlCommand("select active from UserInfo where Username=@username",myconn);
                cmdcheckactivestatus.CommandType = CommandType.Text;
                cmdcheckactivestatus.Parameters.AddWithValue("@username",txtUsername.Text.Trim());
                SqlDataReader rdr = cmdcheckactivestatus.ExecuteReader();
                while (rdr.Read())
                {
                    status = rdr["active"].ToString();
                }
                rdr.Close();
                if(status=="2")
                {
                    lblError.Text = "";
                    lblError.Text = "This User is deactivated, please contact your admin office";
                }
                else
                {
                    SqlCommand cmdgetlogininfo = new SqlCommand("spLogin", myconn);
                    cmdgetlogininfo.CommandType = CommandType.StoredProcedure;
                    cmdgetlogininfo.Parameters.AddWithValue("@Username", txtUsername.Text);
                    cmdgetlogininfo.Parameters.AddWithValue("@Password", txtPassword.Text);
                    int usercount = (Int32)cmdgetlogininfo.ExecuteScalar();
                    if (usercount == 1)
                    {
                        Session["usernamevar"] = txtUsername.Text;
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {

                        lblError.Text = "";
                        lblError.Text = "Invalid Username or Password, try again with correct username and password.";
                    }

                    myconn.Close();
                }

               
            }

        }
    }
}
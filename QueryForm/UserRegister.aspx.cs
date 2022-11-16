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
    public partial class UserRegister : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text==""||txtPassword.Text=="")
            {
                lblError.Text = "";
                lblSuccessMessage.Text = "";
                lblError.Text = "Username and Password Required.";
            }
            else
            {
                if (myconn.State == ConnectionState.Closed)
                    myconn.Open();
                SqlCommand cmdsavedata = new SqlCommand("spRegister", myconn);
                cmdsavedata.CommandType = CommandType.StoredProcedure;
                cmdsavedata.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmdsavedata.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmdsavedata.ExecuteNonQuery();
                lblSuccessMessage.Text = "";
                lblError.Text = "";
                lblSuccessMessage.Text = "New User Created Successfuly.";
                myconn.Close();
            }
            

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace QueryForm
{
    public partial class ControlPannel : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdropdownuserlist();
                getregistereduserlist();
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if (ddlUserList.SelectedIndex == 0 || txtUpdatePassword.Text == "")
            {
                lblerror1.Text = "";
                lblsucess1.Text = "";
                lblerror1.Text = "Please select User and then enter new password then click on update";
            }
            else
            {
                if (myconn.State == ConnectionState.Closed)
                    myconn.Open();
                SqlCommand cmdupdatenewpassword = new SqlCommand("UpdatePassword", myconn);
                cmdupdatenewpassword.CommandType = CommandType.StoredProcedure;
                cmdupdatenewpassword.Parameters.AddWithValue("@Userid", ddlUserList.SelectedItem.Value);
                cmdupdatenewpassword.Parameters.AddWithValue("@uPassword", txtUpdatePassword.Text);
                cmdupdatenewpassword.ExecuteNonQuery();
                lblerror1.Text = "";
                lblsucess1.Text = "";
                lblsucess1.Text = "User's New Password updated successfuly.";
                ddlUserList.SelectedIndex = 0;
                this.getregistereduserlist();
                myconn.Close();
            }
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.getregistereduserlist();
        }
      
        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            if (ddlUserlist2.SelectedIndex==0||ddlAction.SelectedIndex==0)
            {
                lblError.Text = "";
                lblSuccessMessage.Text = "";
                lblError.Text = "Please select User and then action from list then click on update";
            }
            else
            {
                if (myconn.State == ConnectionState.Closed)
                    myconn.Open();
                SqlCommand cmdupdatestatus = new SqlCommand("UpdateStaus", myconn);
                cmdupdatestatus.CommandType = CommandType.StoredProcedure;
                cmdupdatestatus.Parameters.AddWithValue("@Userid", ddlUserlist2.SelectedItem.Value);
                cmdupdatestatus.Parameters.AddWithValue("@uStatus", ddlAction.SelectedItem.Value);
                cmdupdatestatus.ExecuteNonQuery();
                lblError.Text = "";
                lblSuccessMessage.Text = "";
                lblSuccessMessage.Text = "User's status updated successfuly.";
                this.getregistereduserlist();
                ddlUserlist2.SelectedIndex = 0;
                ddlAction.SelectedIndex = 0;
                myconn.Close();
            }
           
        }
        private void getregistereduserlist()
        {
            if (myconn.State == ConnectionState.Closed)
                myconn.Open();
            SqlCommand cmdgetalluserlist = new SqlCommand("select Username,Password,case when active=1 then 'Active' else 'Not Active' end as UserStatus from UserInfo order by Username", myconn);
            cmdgetalluserlist.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmdgetalluserlist);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            myconn.Close();
        }
        private void getdropdownuserlist()
        {
            if (myconn.State == ConnectionState.Closed)
                myconn.Open();
            SqlCommand cmdgetalluserlist = new SqlCommand("select Userid,Username from UserInfo order by Username", myconn);
            cmdgetalluserlist.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmdgetalluserlist);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddlUserList.DataSource = ds.Tables[0];
            ddlUserList.DataTextField = "Username";
            ddlUserList.DataValueField = "Userid";
            ddlUserList.DataBind();
            ddlUserList.Items.Insert(0, new ListItem("-Please Select-","0"));

            ddlUserlist2.DataSource = ds.Tables[0];
            ddlUserlist2.DataTextField = "Username";
            ddlUserlist2.DataValueField = "Userid";
            ddlUserlist2.DataBind();
            ddlUserlist2.Items.Insert(0, new ListItem("-Please Select-", "0"));
            myconn.Close();
        }

    }
}
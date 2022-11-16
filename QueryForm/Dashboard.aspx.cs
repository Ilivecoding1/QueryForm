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
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblWelcome.Text = "WELCOME, " + Session["usernamevar"].ToString();
                getdata();
            }
           
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
        private void getdata()
        {
            if (myconn.State == ConnectionState.Closed)
                myconn.Open();
            SqlCommand cmdgetalldata = new SqlCommand("spGetDetails", myconn);
            cmdgetalldata.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmdgetalldata);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.getdata();
        }
    }
}
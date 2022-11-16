using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace DeepakMishraWebAppMVC
{
    public partial class QueryForm : System.Web.UI.Page
    {
        SqlConnection myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultconn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtFabricatorName.Text==""|| txtAddress.Text == "" || txtCity.Text == "" || txtPersonName.Text == "" || txtPhone.Text == "" || txtPincode.Text == "" || txtRemark.Text == "" || txtState.Text == "" || txtStoreName.Text == "" )
            {
                lblSuccessMessage.Text = "";
                lblError.Text = "All Fields are Required.";
            }
            else
            {

                try
                {

                    datainsert();
                }
                catch (Exception ex)
                {
                    throw ex;

                    //lblError.Text = "";
                    //lblError.Text = ex.ToString();//"Some Error while inserting data";
                }
            }
        }
        private void datainsert()
        {
            string imgname1 = Path.GetFileName(StoreFrontUPload.FileName);
            string imgpath1 = Server.MapPath("~/NewFolder2") + "\\" + imgname1;
            string imgtype1 = StoreFrontUPload.PostedFile.ContentType;
            Stream imgsize1 = StoreFrontUPload.PostedFile.InputStream;
            BinaryReader br1 = new BinaryReader(imgsize1);
            byte[] bytes1 = br1.ReadBytes((Int32)imgsize1.Length);

            string imgname2 = Path.GetFileName(PosterLongUpload.FileName);
            string imgpath2 = Server.MapPath("~/NewFolder2") + "\\" + imgname2;
            string imgtype2 = PosterLongUpload.PostedFile.ContentType;
            Stream imgsize2 = PosterLongUpload.PostedFile.InputStream;
            BinaryReader br2 = new BinaryReader(imgsize2);
            byte[] bytes2 = br2.ReadBytes((Int32)imgsize2.Length);

            string imgname3 = Path.GetFileName(PosterCLoseUpload.FileName);
            string imgpath3 = Server.MapPath("~/NewFolder2") + "\\" + imgname3;
            string imgtype3 = PosterCLoseUpload.PostedFile.ContentType;
            Stream imgsize3 = PosterCLoseUpload.PostedFile.InputStream;
            BinaryReader br3 = new BinaryReader(imgsize3);
            byte[] bytes3 = br3.ReadBytes((Int32)imgsize3.Length);

            string imgname4 = Path.GetFileName(GiftsUpload.FileName);
            string imgpath4 = Server.MapPath("~/NewFolder2") + "\\" + imgname4;
            string imgtype4 = GiftsUpload.PostedFile.ContentType;
            Stream imgsize4 = GiftsUpload.PostedFile.InputStream;
            BinaryReader br4 = new BinaryReader(imgsize4);
            byte[] bytes4 = br4.ReadBytes((Int32)imgsize4.Length);

            string imgname5 = Path.GetFileName(InstallAppUpload.FileName);
            string imgpath5 = Server.MapPath("~/NewFolder2") + "\\" + imgname5;
            string imgtype5 = InstallAppUpload.PostedFile.ContentType;
            Stream imgsize5 = InstallAppUpload.PostedFile.InputStream;
            BinaryReader br5 = new BinaryReader(imgsize5);
            byte[] bytes5 = br5.ReadBytes((Int32)imgsize5.Length);

            //if (FileUpload1.PostedFile.ContentLength > 0)

            //{

            //    FileUpload1.SaveAs(imgpath);
            //}
            if (myconn.State == ConnectionState.Closed)
                myconn.Open();
            SqlCommand cmdinsertdata = new SqlCommand("spInsertInfo",myconn);
            cmdinsertdata.CommandType = CommandType.StoredProcedure;
            cmdinsertdata.Parameters.AddWithValue("@Fabricator_name",txtFabricatorName.Text);
            cmdinsertdata.Parameters.AddWithValue("@Person_name", txtPersonName.Text);
            cmdinsertdata.Parameters.AddWithValue("@Phone",txtPhone.Text);            
            cmdinsertdata.Parameters.AddWithValue("@Store_name",txtStoreName.Text);
            cmdinsertdata.Parameters.AddWithValue("@Addres",txtAddress.Text);
            cmdinsertdata.Parameters.AddWithValue("@City",txtCity.Text);
            cmdinsertdata.Parameters.AddWithValue("@States",txtState.Text);
            cmdinsertdata.Parameters.AddWithValue("@Pincode",txtPincode.Text);
            cmdinsertdata.Parameters.AddWithValue("@Remarks",txtRemark.Text);
            cmdinsertdata.Parameters.AddWithValue("@doc1_name",imgname1);
            cmdinsertdata.Parameters.AddWithValue("@doc1_type",imgtype1);
            cmdinsertdata.Parameters.AddWithValue("@doc1_size",imgsize1);
            cmdinsertdata.Parameters.AddWithValue("@doc1_path",imgpath1);
            cmdinsertdata.Parameters.AddWithValue("@doc2_name", imgname2);
            cmdinsertdata.Parameters.AddWithValue("@doc2_type", imgtype2);
            cmdinsertdata.Parameters.AddWithValue("@doc2_size", imgsize2);
            cmdinsertdata.Parameters.AddWithValue("@doc2_path", imgpath2);
            cmdinsertdata.Parameters.AddWithValue("@doc3_name", imgname3);
            cmdinsertdata.Parameters.AddWithValue("@doc3_type", imgtype3);
            cmdinsertdata.Parameters.AddWithValue("@doc3_size", imgsize3);
            cmdinsertdata.Parameters.AddWithValue("@doc3_path", imgpath3);
            cmdinsertdata.Parameters.AddWithValue("@doc4_name", imgname4);
            cmdinsertdata.Parameters.AddWithValue("@doc4_type", imgtype4);
            cmdinsertdata.Parameters.AddWithValue("@doc4_size", imgsize4);
            cmdinsertdata.Parameters.AddWithValue("@doc4_path", imgpath4);
            cmdinsertdata.Parameters.AddWithValue("@doc5_name", imgname5);
            cmdinsertdata.Parameters.AddWithValue("@doc5_type", imgtype5);
            cmdinsertdata.Parameters.AddWithValue("@doc5_size", imgsize5);
            cmdinsertdata.Parameters.AddWithValue("@doc5_path", imgpath5);

            cmdinsertdata.ExecuteNonQuery();
            lblError.Text = "";
            lblSuccessMessage.Text = "Data/Query Saved Successfuly.";
            myconn.Close();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Update_category : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";
        private FileUpload imgs;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("GetinfocateorybyId", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(Request.QueryString["category_ID"].ToString()));
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtcategoryName.Text = dt.Rows[0]["Category_Name"].ToString();
                hdExistImage.Value = dt.Rows[0]["Category_image"].ToString();
                Image1.ImageUrl = "~/img/" + dt.Rows[0]["Category_image"].ToString();
                //imgs = DIV1.InnerHtml = (dt.Rows[0]["Category_image"].ToString());
                //string imgs = DIV1.InnerHtml = (dt.Rows[0]["Category_image"].ToString()).Split(',')[1];
                //byte[] bytes = Convert.FromBase64String(imgs);
                //File.Copy(bytes.ToString() + ".jpg", "\\\\192.168.2.9\\Web");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("updatecategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Category_Name", txtcategoryName.Text);
            cmd.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(Request.QueryString["Category_ID"].ToString()));
            if (FileUpload1.HasFile && FileUpload1.PostedFile.ContentLength > 0)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension == ".jpg" || extension == ".png")
                {
                    cmd.Parameters.AddWithValue("@Category_image", FileUpload1.FileName);
                    Label1.Text = "Update success";
                    Label2.Text = "";
                    Image1.ImageUrl = "~/img/" + FileUpload1.FileName;
                }
                else
                {
                    Label1.Text = "";
                    Label2.Text = "Only .Jpg or.Png allowed";
                }
            }
            else
            {
                cmd.Parameters.AddWithValue("@Category_image", hdExistImage.Value);
                Label1.Text = "Update success";
                Label2.Text = "";
            }
            cmd.ExecuteNonQuery();

            }
            catch( Exception ex)
            {
                Label1.Text = "";
                Label2.Text = "Only .Jpg or.Png allowed";
            }

        }
    }

    }




using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Add_Category : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand("insertcategory", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Category_Name", TextBox1.Text);

                if (FileUpload1.HasFile && FileUpload1.PostedFile.ContentLength > 0)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".jpg" || extension == ".png")
                    {
                        cmd.Parameters.AddWithValue("@Category_image", FileUpload1.FileName);
                        Label1.Text = "Add success";
                        Label2.Text = "";
                        imgadd.ImageUrl = "~/img/" + FileUpload1.FileName;
                    }
                    else
                    {
                        Label1.Text = "";
                        Label2.Text = "Only .Jpg or.Png allowed";
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Category_image", hdExistImages.Value);
                    Label1.Text = "Add success";
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

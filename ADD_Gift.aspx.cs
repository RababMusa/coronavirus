using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ADD_Gift : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlDataAdapter daC = new SqlDataAdapter("GetAllCategory", connection);
                daC.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                DataTable dtC = new DataTable();
                daC.Fill(dtC);
                ddlCategory.DataSource = dtC;
                ddlCategory.DataTextField = "Category_Name";
                ddlCategory.DataValueField = "Category_ID";
                ddlCategory.DataBind();
            }
            catch (Exception ex) {
               // Response.Write(ex.Message);
            }
            
            }
        }

        protected void btnADD_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand("Add_Gift", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gift_Name", txtgiftName.Text);
                cmd.Parameters.AddWithValue("@Description", txtarea.Text);
                cmd.Parameters.AddWithValue("@Price", txtprice.Text);
                cmd.Parameters.AddWithValue("@Category_Id", Convert.ToInt32(ddlCategory.SelectedItem.Value.ToString()));
                if (FileUpload1.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".jpg" || extension == ".png")
                    {
                        cmd.Parameters.AddWithValue("@gift_image", FileUpload1.FileName);
                        imggift.ImageUrl = "~/img/" + FileUpload1.FileName;
                        lblmsg.Text = "Add success";
                        lblmsgimg.Text = "";
                        //Response.Write("<script>alert('Add success!');window.location = 'VIEW_GIFTY.aspx';</script>");
                    }
                    else
                    {
                        lblmsg.Text = " ";
                        lblmsgimg.Text = "Only .Jpg or.Png allowed";
                        //Response.Write("<script>alert('Only .Jpg or.Png allowed!')</script>");
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@gift_image", hdimggift.Value);
                    lblmsg.Text = "Add success";
                    lblmsgimg.Text = "";
                }
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex) {
              //  Response.Write(ex.Message);
            }
        }
            
    }
}
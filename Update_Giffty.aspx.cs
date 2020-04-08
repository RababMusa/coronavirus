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
    public partial class Update_Giffty : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("getGiftByID", con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                da.SelectCommand.Parameters.AddWithValue("@gift_id", Convert.ToInt32(Request.QueryString["gift_id"].ToString()));
                DataTable dt = new DataTable();
                da.Fill(dt);
                bindDropdonw();

                txtgiftName.Text = dt.Rows[0]["gift_Name"].ToString();
                hdimgedit.Value = dt.Rows[0]["gift_image"].ToString();
                imagegift.ImageUrl = "~/img/" + dt.Rows[0]["gift_image"].ToString();
                txtprice.Text = dt.Rows[0]["Price"].ToString();
                txtarea.Text = dt.Rows[0]["Description"].ToString();
                //Label1.Text = dt.Rows[0]["gift_Name"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["Category_ID"].ToString();
                //cmd.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(Request.QueryString["Category_ID"].ToString()));

            }

        }
        void bindDropdonw()
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("GetAllCategory", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Category_ID";
            DropDownList1.DataBind();
        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                SqlCommand cmd = new SqlCommand("Update_gift", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gift_Name", txtgiftName.Text);
                cmd.Parameters.AddWithValue("@description", txtarea.Text);
                cmd.Parameters.AddWithValue("@price", txtprice.Text);
                cmd.Parameters.AddWithValue("@ddlistcategory", Convert.ToInt32(DropDownList1.SelectedItem.Value.ToString()));
                cmd.Parameters.AddWithValue("@gift_id", Convert.ToInt32(Request.QueryString["gift_id"].ToString()));
                if (FileUpload1.HasFile && FileUpload1.PostedFile.ContentLength > 0)
                {
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

                    if (extension == ".jpg" || extension == ".png")
                    {
                        cmd.Parameters.AddWithValue("@gift_image", FileUpload1.FileName);
                        lblmsg.Text = "Update success";
                        lblmsggift.Text = "";
                        imagegift.ImageUrl = "~/img/" + FileUpload1.FileName;
                    }
                    else
                    {
                        lblmsg.Text = "";
                        lblmsggift.Text = "Only .Jpg or.Png allowed";
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@gift_image", hdimgedit.Value);
                    lblmsg.Text = "Update success";
                    lblmsggift.Text = "";
                }
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }



        }

    }
    }

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
    public partial class Admin_EdiorProfile : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection con = new SqlConnection(connection);
                SqlDataAdapter da = new SqlDataAdapter("GetUserByID", connection);
                da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                if (Session["Name"] != null)
                {
                    da.SelectCommand.Parameters.AddWithValue("@User_ID", Convert.ToInt32(Session["Name"].ToString()));
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txtuser.Text = dt.Rows[0]["User_Name"].ToString();
                    textlastname.Text = dt.Rows[0]["FullName"].ToString();
                    txtemail.Text = dt.Rows[0]["Email"].ToString();
                    txtpassword.Text = dt.Rows[0]["Password"].ToString();
                    txtaddress.Text = dt.Rows[0]["Address"].ToString();
                    txtphone.Text = dt.Rows[0]["phone"].ToString();
                }
            
            }
          
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update_Eitor_Admin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@User_ID", Convert.ToInt32(Session["Name"].ToString()));
            cmd.Parameters.AddWithValue("@User_Name", txtuser.Text);
            cmd.Parameters.AddWithValue("@FullName", textlastname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.ExecuteNonQuery();

                lblmsgupdate.Text = "Your Profile Updated successfully";
                lblmsgphone.Text = "";
                //Response.Write("<script>alert('Your Profile Updated successfully')</script>");
            }
            catch (Exception ex)
            {
                lblmsgupdate.Text = "";
                lblmsgphone.Text = "The email is unique ";
            }
        }
    }
}
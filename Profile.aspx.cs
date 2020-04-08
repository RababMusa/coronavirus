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
    public partial class Profile : System.Web.UI.Page
    {
        string connection = @"Data Source =ASOOM\SQLEXPRESS; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("GetUserByID", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            if (Session["Name"] != null)
            {
                da.SelectCommand.Parameters.AddWithValue("@User_ID", Convert.ToInt32(Session["Name"].ToString()));
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtuser.Text = dt.Rows[0]["User_Name"].ToString();
                txtemail.Text = dt.Rows[0]["Email"].ToString();
                txtpassword.Text = dt.Rows[0]["Password"].ToString();
                txtaddress.Text = dt.Rows[0]["Address"].ToString();
                txtphone.Text = dt.Rows[0]["phone"].ToString();
            }
        }
    

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(connection);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Update_Eitor_Admin", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@User_ID", Convert.ToInt32(Session["Name"].ToString()));
            //cmd.Parameters.AddWithValue("@User_Name", txtuser.Text);
            //cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            //cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            //cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            //cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            //cmd.ExecuteNonQuery();

            //lblmsg3.Text = "Update success";
        }
    }
}
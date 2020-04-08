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
    public partial class Login : System.Web.UI.Page
    {
        public static int Role;
  
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Login_User", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("email", txtuserlogin.Text);
            da.SelectCommand.Parameters.AddWithValue("password", passwordlogin.Text);


            DataTable td = new DataTable();
            da.Fill(td);

            if (td.Rows.Count > 0)
            {
                Role = (int)td.Rows[0]["Roll_ID"];
                if (td.Rows[0]["Roll_ID"].ToString() == "1" || td.Rows[0]["Roll_ID"].ToString() == "2")
                {
                    //Session["Name"] = txtuserlogin.Text;
                    Session["Name"] = td.Rows[0]["User_ID"].ToString();
                    //Response.Redirect("Dashboard.aspx");
                    Response.Write("<script>alert('Login Success.. Welcome to you ');window.location = 'Dashboard.aspx';</script>");
                }
                else if (td.Rows[0]["Roll_ID"].ToString() == "3")
                {
                    Session["Customer"] = td.Rows[0]["User_ID"].ToString();
                    Response.Write("<script>alert('Login Success.. Welcome to you ');window.location = 'Home1.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('sorry... try again!')</script>");
            }
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            SqlConnection conection = new SqlConnection(connection);
            conection.Open();
            SqlCommand cmd = new SqlCommand("ADD_Cutomer", conection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@User_Name", txtuserRegister.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Roll_ID", 3);
            cmd.Parameters.AddWithValue("@Password", txtpasswordRegister.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Add Success.. Welcome to you ');window.location = 'Home.aspx';</script>");

        }
    }
}
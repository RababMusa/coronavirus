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
    public partial class AddEditor : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnADD_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conection = new SqlConnection(connection);
                conection.Open();
                SqlCommand cmd = new SqlCommand("ADD_Editor", conection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@User_Name", txtuser.Text);
                cmd.Parameters.AddWithValue("@FullName", textlastname.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
                cmd.Parameters.AddWithValue("@Roll_ID", 2);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@Phone", txtphone.Text);
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Add successfully');window.location = 'Editor.aspx';</script>");
                lblmsgupdate.Text = "Add successfully";
                lblmsgphone.Text = "";
            }
            catch (Exception ex)
            {
                lblmsgupdate.Text = "";
                lblmsgphone.Text = "The email is unique ";
            }
        }
    }
}
     
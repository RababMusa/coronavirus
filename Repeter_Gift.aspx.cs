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
    public partial class Repeter_Gift : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("view_giftInfo", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            rpGift.DataSource = dt;
            rpGift.DataBind();

        }
        protected void rpGift_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                DropDownList dll = (DropDownList)e.Item.FindControl("ddlCategory");
                if (dll != null)
                {
                    SqlDataAdapter daC = new SqlDataAdapter("GetAllCategory", connection);
                    daC.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    DataTable dtC = new DataTable();
                    daC.Fill(dtC);



                    if (dtC.Rows.Count > 0)
                    {
                        dll.DataSource = dtC;
                        dll.DataTextField = "Category_Name";
                        dll.DataValueField = "Category_ID";
                        dll.DataBind();




                    }
                    SqlDataAdapter da = new SqlDataAdapter("view_giftInfo", connection);
                    da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    dll.SelectedValue = dt.Rows[0]["Category_Id"].ToString();

                }
            }
        }

                protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("gift_asc", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("gift_desc", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
        }
        

        protected void add_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void wedding_Click(object sender, EventArgs e)
        {

        }

     

        protected void Frindship_Click(object sender, EventArgs e)
        {

        }

        protected void Graduation_Click(object sender, EventArgs e)
        {

        }

        protected void Valintine_Click(object sender, EventArgs e)
        {

        }

        protected void Flowers_Click(object sender, EventArgs e)
        {

        }

        protected void BirthdayG_Click(object sender, EventArgs e)
        {

        }

        protected void OK_Click(object sender, EventArgs e)
        {

        }
    }
}
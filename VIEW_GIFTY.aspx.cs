using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebApplication1
{
    public partial class VIEW_GIFTY : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)

            {
                Bindtask();
            }
        }
        void Bindtask()
        {
     
            SqlDataAdapter da = new SqlDataAdapter("view_giftInfo", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            rpGift.DataSource = dt;
            rpGift.DataBind();
           

            if (rpGift.Items.Count == 0)
            {
                lblgift.Text = "No gift";
            }


            // SqlConnection con = new SqlConnection(connection);
            // con.Open();
            // SqlDataAdapter daid = new SqlDataAdapter("GetinfocateorybyId", connection);
            //daid.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            //daid.SelectCommand.Parameters.AddWithValue("@Category_ID", Convert.ToInt32(ddlCategory.SelectedValue));
            // DataTable dtcid = new DataTable();
            // daid.Fill(dtcid);
            // ddlCategory.DataSource = dtcid;
            // ddlCategory.DataTextField = "Category_Name";
            // ddlCategory.DataValueField = "Category_ID";
            // ddlCategory.DataBind();


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
          
       
    
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(connection);
        //    con.Open();
        //    SqlDataAdapter da = new SqlDataAdapter("search_gift", con);
        //    da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
        //    da.SelectCommand.Parameters.AddWithValue("@gift_Name", txtsearchcustomer.Text);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    rpGift.DataSource = dt;
        //    rpGift.DataBind();

        //if (dt.Rows.Count == 0)
        //{
        //    //Session.Clear();
        //    Label3.Text = "Not Found";

        //}
        //else
        //{
        //    Label3.Text = "";
        //}
        //}

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
                    string categoryId = (e.Item.DataItem as DataRowView)["Category_ID"].ToString();
                    dll.Items.FindByValue(categoryId).Selected = true;
                    //dll.Items.FindByValue(categoryId).Selected = true;
                    //dll.SelectedValue = dt.Rows[0]["Category_Id"].ToString();
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

            rpGift.DataSource = dt;
            rpGift.DataBind();

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("gift_desc", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            rpGift.DataSource = dt;
            rpGift.DataBind();
        }




        protected void OK_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("PRICE", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@max", Convert.ToInt32(txtMAx.Text));
            da.SelectCommand.Parameters.AddWithValue("@min", Convert.ToInt32(txtMin.Text));
            DataTable dt = new DataTable();
            da.Fill(dt);
            rpGift.DataSource = dt;
            rpGift.DataBind();
            if (dt.Rows.Count == 0)
            {
                //Session.Clear();
                lblgift.Text = "Not Found";

            }
            else
            {
                lblgift.Text = "";
            }
        }



        protected void linkButtonUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Giffty.aspx");
        }


        protected void adds_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADD_Gift.aspx");
        }
        protected void rpGift_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                SqlConnection con = new SqlConnection(connection);
                SqlCommand cmd = new SqlCommand("delete from Gifts where gift_id = @gift_id", con);
                con.Open();
                //cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gift_id", e.CommandArgument);
                int re = cmd.ExecuteNonQuery();
                if (re == 1)
                {
                    Bindtask();
                    //Response.Write("<script>alert('delete this gift!')</script>");
                }
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("FiltterGiftsByCategoryID", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@categoryId", Convert.ToInt32(ddlCategory.SelectedValue));
            DataTable dt = new DataTable();
            da.Fill(dt);
            rpGift.DataSource = dt;
            rpGift.DataBind();

        }

        protected void btnsearchgift_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("search_gift", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@gift_Name", txtsearchgift.Text);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rpGift.DataSource = dt;
            rpGift.DataBind();
            if (rpGift.Items.Count == 0)
            {
                Label3.Text = "Not Found";
            }
            else
            {
                Label3.Text = "";
            }
        }
    }
}

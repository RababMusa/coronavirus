using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Home1 : System.Web.UI.Page
    {
        string connection = @"Data Source =.; Integrated Security=True; Database=giffty";
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlDataAdapter da = new SqlDataAdapter("view_categoryInfo", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            repeatercategory.DataSource = dt;
            repeatercategory.DataBind();

            bindprice();
            bindpricemore();
        }
        protected void bindprice()
        {
            SqlDataAdapter da = new SqlDataAdapter("viewgiftbyprice", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void bindpricemore()
        {
            SqlDataAdapter da = new SqlDataAdapter("viewgiftbypricemore", connection);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater2.DataSource = dt;
            Repeater2.DataBind();
        }
    }
}
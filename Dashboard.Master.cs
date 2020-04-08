using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("~/Login.aspx");

            }
            if (Login.Role == 2)
            {
                lieditor.Visible = false;
            }

            String activepage = Request.RawUrl;
            if (activepage.Contains("Dashboard.aspx"))
            {
                System.Web.UI.HtmlControls.HtmlGenericControl home = (HtmlGenericControl)this.Page.Master.FindControl("dash");
                home.Attributes["class"] = "active";
            }
            else if (activepage.Contains("Admin-EdiorProfile.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("profile");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("Editor.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("lieditor");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("UpdateEditor_Admin.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("lieditor");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("View_Categories.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("categories");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("Update_category.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("categories");
                orderr.Attributes["class"] = "active";
            }

            else if (activepage.Contains("Add_Category.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("categories");
                orderr.Attributes["class"] = "active";
            }

            else if (activepage.Contains("View_Orders.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("orders");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("VIEW_GIFTY.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("gifts");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("Update_Giffty.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("gifts");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("ADD_Gift.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("gifts");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("VIEW-CUSTOMER.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("customers");
                orderr.Attributes["class"] = "active";
            }
            else if (activepage.Contains("Login.aspx"))
            {
                HtmlGenericControl orderr = (HtmlGenericControl)this.Page.Master.FindControl("signout");
                orderr.Attributes["class"] = "active";
            }
            else
            {

            }

        }
        protected void btnsign_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");

        }
    }
}
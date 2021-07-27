using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome to Admin";
    }
    protected void btn_newbid_Click(object sender, EventArgs e)
    {
        Response.Redirect("Newbid.aspx");
    }
    protected void btn_viewbids_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewbids.aspx");
    }
    protected void btn_members_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowMembers.aspx");
    }
    protected void btn_changepwd_Click(object sender, EventArgs e)
    {
        Server.Transfer("changepwd.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response .Redirect("~/Home.aspx");
    }
    protected void btn_approve_Click(object sender, EventArgs e)
    {
        Server.Transfer("Approvebids.aspx");
    }
}

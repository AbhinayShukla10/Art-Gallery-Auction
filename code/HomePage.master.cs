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

public partial class HomePage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Home.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Server.Transfer("Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Server.Transfer("contactus.aspx");
    }
}

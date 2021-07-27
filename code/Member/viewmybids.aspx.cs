using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Member_viewmybids : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            GetMyBidInfo(0);

    }

    private void GetMyBidInfo(int p)
    {
        da = new SqlDataAdapter("select BidId,GivenCost,BidDate,BidStatus from memberbids where MemberId='" + Session["mid"].ToString() + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "temp");
        GridView1.DataSource = ds;

        GridView1.PageIndex = p;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GetMyBidInfo(e.NewSelectedIndex);
    }
}

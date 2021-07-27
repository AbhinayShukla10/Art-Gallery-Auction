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

public partial class Admin_viewbids : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    SqlDataAdapter da;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
            getbids();

    }

    private void getbids()
    {
        cm = new SqlCommand("select * from tbl_cat", cn);
        cn.Open();
        SqlDataReader dr=cm.ExecuteReader();
        while (dr.Read())
            DropDownList1.Items.Add(dr[0].ToString());
        cn.Close();
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        getgridpage(0);
        

    }

    private void getgridpage(int p)
    {
        da = new SqlDataAdapter("select * from tbl_bid where CatagoryName='" + DropDownList1.Text + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "temp");
        GridView1.DataSource = ds;
        GridView1.PageIndex = p;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        getgridpage(e.NewPageIndex);
    }
}

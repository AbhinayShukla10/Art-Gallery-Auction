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
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            getbids();
            
            
        }

    }
  
    private void getbids()
    {
        cm = new SqlCommand("select BidId from tbl_bid where BidState='Active'", cn);
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
        da = new SqlDataAdapter("select * from memberbids where  BidId='" + DropDownList1.Text + "'", cn);
        da.Fill(ds, "temp");
        GridView1.DataSource = ds;
        GridView1.PageIndex = p;
        GridView1.DataBind();
        Button2.Enabled = true;
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        cm = new SqlCommand("select Distinct MemberId from memberbids where  BidId='" + DropDownList1.Text + "'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        while (dr.Read())
            DropDownList2.Items.Add(dr[0].ToString());
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cm = new SqlCommand("update memberbids set BidStatus='Selected' where BidId='" + DropDownList1.Text + "' and MemberId='" + DropDownList2.Text + "'", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        
        Label3.Visible = true;
        
        //cm = new SqlCommand("update memberbids set BidDeadline='Closed'where BidId='"+DropDownList1.Text+"'" , cn);
        //cm.ExecuteNonQuery();
        cm = new SqlCommand("update tbl_bid set BidState='DeActive' where BidId='" + DropDownList1.Text + "'", cn);
        cm.ExecuteNonQuery();
        Label3.Text = "Bid has successfully approved";
        cn.Close();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

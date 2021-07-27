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

public partial class Member_GiveQt : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection (ConfigurationManager .AppSettings ["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack ==false )
        {
            txt_bid.Text = this.Request.QueryString["BidId"];
            bool bstatus=bidsatatus(txt_bid.Text, Session["mid"].ToString());
            if (bstatus)
            {
                
                Label3.Text = "You can't bid second time.Your bid details are...";
            }
            else
            {
                cm = new SqlCommand("select BidCost from tbl_bid where BidId='" + txt_bid.Text + "'", cn);
                cn.Open();
                txt_acost.Text = cm.ExecuteScalar().ToString();
                txt_biddate.Text = DateTime.Now.ToShortDateString();
                cn.Close();
            }
        }


        //txt_bid.Text = Context.Items["bid"].ToString();
        //txt_acost.Text = Context.Items["bcost"].ToString();
        //txt_biddate.Text = DateTime.Now.ToShortDateString();

    }

    private bool bidsatatus(string bid,string mid)
    {
        cm = new SqlCommand("select GivenCost,BidDate from memberbids where MemberId='" + Session["mid"].ToString() + "' and BidId='" + txt_bid.Text + "'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        double cost = 0;
        if (dr.Read())
        {
            cost =double.Parse (dr[0].ToString());
        }
        cn.Close();
        if (cost > 0)
        {
            txt_mycost.Text = cost.ToString();
            Label3.Visible = true;

            Button1.Enabled = false;
            return true;
        }
        else
            return false;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (double.Parse(txt_acost.Text) < double.Parse(txt_mycost.Text))
        {

            cm = new SqlCommand("insert into memberbids values('" + txt_bid.Text + "','" + Session["mid"].ToString() + "','" + txt_mycost.Text + "','" + txt_biddate.Text + "','Not Selected')", cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
            Label2.Text = "Bid Accepted";
            
        }
        else
            Label2.Text = "Your value is less than bid value,ur bid is not acceptable";
        Label2.Visible = true;
    }
}

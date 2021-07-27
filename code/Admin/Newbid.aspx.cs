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
using System.Drawing;

public partial class Admin_Newbid : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            getcat();
         }

    }

    private void getcat()
    {
        cm = new SqlCommand("select * from tbl_cat", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        while (dr.Read())
            ddl_cat.Items.Add(dr[0].ToString());
        cn.Close();
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server .MapPath("~/uploads/") + FileUpload1.FileName);
        }
      
        if (txt_bid.Text != "" && ddl_cat.Text != "" &&FileUpload1 .FileName !="" && txt_cost.Text != "" && txt_edate.Text != "" && txt_sdate.Text != "" && ddl_status.Text != "")  
        {
            string path = "~/uploads/" + FileUpload1.FileName;
            cm = new SqlCommand("insert into tbl_bid values('" + txt_bid.Text + "','" + ddl_cat.Text + "','" + path + "'," + txt_cost.Text + ",'" + txt_sdate.Text + "','" + txt_edate.Text + "','" + ddl_status.Text + "','"+txt_desc .Text +"')", cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
            Label3.Text = "Bid inserted";
            Label3.ForeColor = Color.Black;
           
        }
        else
        {
            Label3.ForeColor = Color.Red;
            Label3 .Text  = "* Manditory fields";
        }
        Label3.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            cm = new SqlCommand("insert into tbl_cat values('" + txt_cat.Text.ToUpper() + "')", cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
            txt_cat.Text = "";
            Label2.Text = "Category added succesfully";
        }
        catch (Exception obj)
        {
            Label2.Text = "Duplicate category con't be allowed";
        }
        finally
        {
            getcat();
            Label2.Visible = true;
                       
        }
        
       
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        txt_bid.Text = "";
        txt_cat.Text = "";
        txt_cost.Text = "";
        txt_edate.Text = "";
        txt_sdate.Text = "";
      
        Label2.Text = "";
        Label3.Text = "";
    }
  

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}

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

public partial class Admin_ShowMembers : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommand cm;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
            getmembers(0);

    }

    private void getmembers(int p)
    {
        da = new SqlDataAdapter("select MemberName,UserName,DateOfBirth,Email,Mobile,Designation,Status from members", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "members");
        GridView1.DataSource = ds;
        GridView1.PageIndex = p;
        GridView1.DataBind();
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = ( DropDownList )GridView1.SelectedRow.FindControl("d1");
        string status = ddl.Text;
        GridView1.SelectedRow.Cells[6].Text = status;
        string uid = GridView1.SelectedRow.Cells[1].Text;
        cm = new SqlCommand("update members set Status='" + status + "'where UserName='" + uid + "'", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();

        
    }
}

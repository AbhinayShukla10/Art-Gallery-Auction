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


public partial class Admin_changepwd : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cm = new SqlCommand("select count(*) from admin where Username='" + TextBox1.Text + "'", cn);
        cn.Open();
        int i = int.Parse(cm.ExecuteScalar().ToString ());
        cn.Close();
        if (i > 0)
        {
             Label2.Visible = true;
            Label2.Text = "User name exist";
            
            Panel3.Enabled = true;

        }
        else
        {
            Label2.Text = "User name not exist";
            Panel3.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        cm = new SqlCommand("select count(*) from members where UserName='" + TextBox1.Text + "'", cn);
        cn.Open();
        int i = int.Parse(cm.ExecuteScalar().ToString());
        cn.Close();
        if (i > 0)
        {

            Label2.Text = "UserName Exist";
            Label3.Visible = false;
            Panel4.Enabled = true;
        }
        else
        {
            Label2.Text = "UserName not exist";
            Panel4.Enabled = false;
        }
        Label2.Visible = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "" && TextBox3.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                cm = new SqlCommand("update members set Password='" + TextBox3.Text + "' where UserName='" + TextBox1.Text + "'", cn);
                cn.Open();
                cm.ExecuteNonQuery();
                cn.Close();

                Label3.Text = "Password changed";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Label3.Visible = false;
                Panel4.Enabled = false;

            }
            else
                Label3.Text = "Password miss match";
        }
        else 
            Label3 .Text ="Null values not allowed";
        Label3.Visible = true;
    }
}

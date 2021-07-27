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

public partial class register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Server.Transfer("Login.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (txt_name.Text != "" && txt_email.Text != "" && txt_mobile.Text != "" && txt_pwd.Text != "" && txt_retypepwd.Text != "" && txt_uname.Text != "")
        {
            if (txt_pwd.Text == txt_retypepwd.Text)
            {
                cm = new SqlCommand("insert into members values('" + txt_name.Text + "','" + txt_uname.Text + "','" + txt_pwd.Text + "','" + txt_dob.Text + "','" + txt_email.Text + "','" + txt_mobile.Text + "','" + txt_designation.Text + "','A')", cn);
                cn.Open();
                int i = cm.ExecuteNonQuery();
                cn.Close();
                Label2.Text = "Registration successfull";
               
            }
            else
            {
                Label2.Text = "Password Missmatch";
            }
        }
        else
            Label2.Text = "* fields are manditory";
        Label2.Visible = true;
    }
}

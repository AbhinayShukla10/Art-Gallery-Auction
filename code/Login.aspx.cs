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

public partial class Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
            if (txt_uname.Text == "admin" && txt_password.Text == "anwar")
                Response.Redirect("Admin/Newbid.aspx");
            else
            {
                cm = new SqlCommand("select count(*) from members where UserName='" + txt_uname.Text + "' and Password='" + txt_password.Text + "' and Status='A'", cn);
                cn.Open();
                int i = Convert.ToInt32(cm.ExecuteScalar().ToString());
                cn.Close();
                if (i > 0)
                {
                    Session["mid"] = txt_uname.Text;
                    Server.Transfer("Member/MyProfile.aspx");
                }
                else
                    Label2.Text = "Invalid UserName/Password/Blocked";
            }
        
        Label2.Visible = true;
        
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }
}

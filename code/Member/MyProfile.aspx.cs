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

public partial class Member_MyProfile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txt_mid.Text = Session["mid"].ToString();
            getmydetails();
        }

    }

    private void getmydetails()
    {
        cm = new SqlCommand("select DateOfBirth,Email,Mobile,Designation from members where UserName='" + Session["mid"].ToString() + "'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.Read())
        {
            txt_dob.Text = dr[0].ToString();
            txt_email.Text = dr[1].ToString();
            txt_contact.Text = dr[2].ToString();
            txt_desig.Text = dr[3].ToString();
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cm = new SqlCommand("update members set DateOfBirth='" + txt_dob.Text + "', Email='" + txt_email.Text + "', Mobile='" + txt_contact.Text + "', Designation='" + txt_desig.Text + "' where UserName='" + txt_mid.Text + "'", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
        Label2.Visible = true;
        Label2.Text = "Details Updated";


    }
}

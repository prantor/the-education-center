using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class careerforum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
            SqlConnection conn;
            SqlCommand cmd2;
            SqlDataReader rdr;
            conn = new SqlConnection(connStr);
            conn.Open();

            cmd2 = new SqlCommand("Select * from professions order by profession", conn);

            rdr = cmd2.ExecuteReader();

            ddlCategory.DataSource = rdr;
            ddlCategory.DataValueField = "id";
            ddlCategory.DataTextField = "profession";
            ddlCategory.DataBind();

            ddlCategory.Items.Insert(0, new ListItem("Select Industry...", "0"));
            cmd2.Connection.Close();






        }





    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd2;
        SqlDataReader rdr2;
        conn = new SqlConnection(connStr);
        conn.Open();

        cmd2 = new SqlCommand("Select * from professional where profession=" + ddlCategory.SelectedValue+ " order by lastname", conn);

        rdr2 = cmd2.ExecuteReader();
        string videocell;
        videocell = "<table><tr>";
        int count = -1;
        while (rdr2.Read() == true)
        {
            count = count + 1;
            if ((count % 2) == 0)
            {
                videocell = videocell + "</tr><tr>";
            }

            videocell = videocell + "<td class=" + "\"" + "videocell2" + "\"" + "><strong>" + rdr2["firstname"].ToString() + " " + rdr2["lastname"].ToString() + "</strong><br /><br />" + rdr2["companyname"].ToString() + "<br /><i>" + rdr2["jobtitle"].ToString() + "</i><br/>" + rdr2["contactwebsite"].ToString() + "<br /><br />" + rdr2["biography"].ToString() + "</td>";

        }

        videocell = videocell + "</tr></table>";

        if (count == -1)
        {
            videocell = "We don't have any professionals in that industry yet.  Please check back soon.";
        }


        lblMedia.Text = videocell;





    }
}

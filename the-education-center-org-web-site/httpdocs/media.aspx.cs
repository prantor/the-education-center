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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class video : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      

        string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd2;
        SqlDataReader rdr2;
        conn = new SqlConnection(connStr);
        conn.Open();

        cmd2 = new SqlCommand("Select * from media", conn);
        rdr2 = cmd2.ExecuteReader();
        string videocell;
        videocell = "<table><tr>";
        int count = -1;
        while (rdr2.Read() == true)
        {
            count = count + 1;
            if ((count % 3) == 0)
            {
                videocell = videocell + "</tr><tr>";
            }

            videocell = videocell + "<td class=" + "\"" + "videocell" + "\"" + "><a href=\"" + "mediawatch.aspx?id=" + rdr2["id"].ToString() + "\"" + ">" + "<img src=\"" + "http://content.bitsontherun.com/thumbs/" + rdr2["botrkey"].ToString() + "-320.jpg" + "\"" + "border=0 width=300 height=175></a><br /><p class=" + "\"" + "videodesc" + "\"" + "><b>" + rdr2["title"].ToString() + "</b><br /><br /></p></td>";

        }

        videocell = videocell + "</tr></table>";

        lblMedia.Text = videocell;


    }
}

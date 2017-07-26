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

public partial class mediawatch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id;

        id = Request.QueryString["id"].ToString();

        string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader rdr;
        conn = new SqlConnection(connStr);
        conn.Open();

        cmd = new SqlCommand("Select * from media where id=@id", conn);
        cmd.Parameters.Add("@id", id);

        rdr = cmd.ExecuteReader();

        if (rdr.Read() == true)
        {
            lblTitle.Text = rdr["title"].ToString();
            lblDesc.Text = "";
            lblMovie.Text = "<script type=" + "\"" + "text/javascript" + "\"" + "src=" + "\"" + "http://content.bitsontherun.com/players/" + rdr["botrkey"].ToString() + "-staMFZch.js" + "\"" + "></script>";



        }


    }
}

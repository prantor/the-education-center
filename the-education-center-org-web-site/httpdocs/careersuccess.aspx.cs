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


public partial class careersuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string firstname;
        //string lastname;
        //string username;
        //string password;
        //string securityquestion;
        //string answer;

        //firstname = Request.QueryString["Contact0FirstName"].ToString();
        //lastname = Request.QueryString["Contact0LastName"].ToString();
        //username = Request.QueryString["Contact0Username"].ToString();
        //password = Request.QueryString["Contact0Password"].ToString();
        //securityquestion = Request.QueryString["Contact0_SecurityQuestion"].ToString();
        //answer = Request.QueryString["Contact0_SecurityQuestionAnswer"].ToString();

        //string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        //SqlConnection conn;
        //SqlCommand cmd;

        //conn = new SqlConnection(connStr);
        //conn.Open();

        //cmd = new SqlCommand("insert into user_information (firstname, lastname, username, password, securityquestion, answer) values (@firstname, @lastname, @username, @password, @securityquestion, @answer)", conn);

        //cmd.Parameters.Add("@firstname", firstname);
        //cmd.Parameters.Add("@lastname", lastname);
        //cmd.Parameters.Add("@username", username.ToLower());
        //cmd.Parameters.Add("@password", password);
        //cmd.Parameters.Add("@securityquestion", securityquestion);
        //cmd.Parameters.Add("@answer", answer.ToLower());

        //cmd.ExecuteNonQuery();

        //cmd.Connection.Close();
        //conn.Close();

    }
}

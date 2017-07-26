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

public partial class signupsuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string firstname;
        string lastname;
        string username;
        string password;
        string securityquestion;
        string answer;

        firstname = Request.QueryString["Contact0FirstName"].ToString();
        lastname = Request.QueryString["Contact0LastName"].ToString();
        username = Request.QueryString["Contact0Username"].ToString();
        password = Request.QueryString["Contact0Password"].ToString();
        securityquestion = Request.QueryString["Contact0_SecurityQuestion"].ToString();
        answer = Request.QueryString["Contact0_SecurityQuestionAnswer"].ToString();

        string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;

        conn = new SqlConnection(connStr);
        conn.Open();

        cmd = new SqlCommand("insert into user_information (firstname, lastname, username, password, securityquestion, answer) values (@firstname, @lastname, @username, @password, @securityquestion, @answer)", conn);

        cmd.Parameters.Add("@firstname", firstname);
        cmd.Parameters.Add("@lastname", lastname);
        cmd.Parameters.Add("@username", username.ToLower());
        cmd.Parameters.Add("@password", password);
        cmd.Parameters.Add("@securityquestion", securityquestion);
        cmd.Parameters.Add("@answer", answer.ToLower());

        cmd.ExecuteNonQuery();

        cmd.Connection.Close();
        conn.Close();


    }
    public bool validateUser(string userName, string password)
    {
        string connStr = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
        SqlConnection conn;
        SqlCommand cmd;
        string lookuppassword;

        bool rtnValue = false;

        //check to make sure that both text boxes contain something.
        if (txtUsername.Text == "" || txtPassword.Text == "")
        {
            lblMsg.Text = "Please enter a valid username and password.";
        }

        conn = new SqlConnection(connStr);
        conn.Open();

        cmd = new SqlCommand("Select Password from user_information where username=@username", conn);
        cmd.Parameters.Add("@username", txtUsername.Text.ToLower());

        //execute sql statement
        lookuppassword = (string)cmd.ExecuteScalar();
        cmd.Dispose();
        conn.Dispose();

        if (lookuppassword == "")
        {
            rtnValue = false;
        }
        if (lookuppassword == txtPassword.Text)
        {
            rtnValue = true;

        }
        if (rtnValue == true)
        {
            string suspend;

            Session["username"] = txtUsername.Text.ToString();

            string strCommand = "Select * from user_information where username='" + userName + "'";
            cmd = new SqlCommand(strCommand, new SqlConnection(connStr));

            cmd.Connection.Open();


            SqlDataReader rdr = cmd.ExecuteReader();


            if (rdr.Read() == true)
            {

                Session["firstname"] = rdr["Firstname"];
                Session["lastname"] = rdr["Lastname"];

                Session["userid"] = rdr["id"];
            }




            cmd.Connection.Close();


        }
        return rtnValue;
    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        if (validateUser(txtUsername.Text.ToString(), txtPassword.Text.ToString()))
        {

            Response.Redirect("memberhome.aspx", true);

        }
        else
        {

            lblMsg.Text = "Incorrect username/password combination.  Please try again.";

        }

    }
}

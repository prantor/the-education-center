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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUsername.Focus();

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

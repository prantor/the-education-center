using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        System.Web.Mail.MailMessage message = new System.Web.Mail.MailMessage();
        message.From = txtEmail.Text.ToString();
        message.To = "mlitow@theeducationcenter.org";
        message.Subject = "A New Message from " + txtFirst.Text.ToString() + " " + txtLast.Text.ToString() + ".";
        message.Body = txtMessage.Text.ToString();
        System.Web.Mail.SmtpMail.SmtpServer = "localhost";
        System.Web.Mail.SmtpMail.Send(message);
 
        txtFirst.Text = "";
        txtLast.Text = "";
        txtEmail.Text = "";
        txtMessage.Text = "Your message has been successfully sent.";

    }
}
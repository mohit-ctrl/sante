using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contact_us1 :  System.Web.UI.Page
{
    DataSet d = new DataSet();

    DataSetTableAdapters.contactTableAdapter t = new DataSetTableAdapters.contactTableAdapter();
    DataSet.contactRow row;
    protected void Page_Load(object sender, EventArgs e)
    { 

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        tname.Text = "";
        tmessage.Text = "";
        temail.Text = "";
        tsubject.Text = "";
        try
        {

            MailMessage mail = new MailMessage();
            System.Net.Mail.SmtpClient SmtpServer = new SmtpClient("Smtp.gmail.com");


            mail.From = new MailAddress("mahajanmohit712@gmail.com");//sender
            mail.To.Add(temail.Text);//receiver
            mail.Subject = "Welcome To Sante`";
            mail.Body = "Thanks for Contacting us we will try to reach to you as soon as possible";


            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("mahajanmohit712@gmail.com", "password");
            SmtpServer.EnableSsl = true;


            SmtpServer.Send(mail);
            row = d.contact.NewcontactRow();
        row.name = tname.Text;
        row.message = tmessage.Text;
        row.emailid = temail.Text;
        row.mobileno = tsubject.Text;
        d.contact.Rows.Add(row);
        t.Update(d.contact);
        tname.Text = "";
        tmessage.Text = "";
        temail.Text = "";
        tsubject.Text = "";
        }
        catch (Exception ex)
        {
            Label1.Text = "This is a fake website for training purpose only.";

        }
    }
}
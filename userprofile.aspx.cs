using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class userprofile : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.add_patientTableAdapter t = new DataSetTableAdapters.add_patientTableAdapter();
    DataSet.add_patientRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            t.Fill(d.add_patient);
            string pid = Session["user"].ToString();
            row = d.add_patient.FindByphone_number(pid);
            TextBox1.Text = row.first_name;
            TextBox2.Text = row.last_name;
            TextBox3.Text = row.email_id;
            img3.ImageUrl = row.profile_image;
            Label1.Text = row.first_name;
            Label2.Text = row.email_id;
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        row = d.add_patient.FindByphone_number(Session["user"].ToString());
        if (TextBox6.Text.Equals(row.password))
        {
            row.password = TextBox7.Text;
            t.Update(row);
            Response.Redirect("viewuserprofile.aspx");
        }
        else
        {
            Label3.Text = "Old Password does not match. ";

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string filename = "";
        if (fileupload1.HasFile)
        {
            filename = Path.GetFileName(fileupload1.PostedFile.FileName);
            fileupload1.PostedFile.SaveAs(Server.MapPath(path: "~/admin/doctor's images/") + filename);

        }
        string pid = Session["user"].ToString();
        row = d.add_patient.FindByphone_number(pid);
        row.first_name = TextBox1.Text;
        row.last_name = TextBox2.Text;
        row.email_id = TextBox3.Text;
        row.profile_image = "~/admin/doctor's images/" + filename;
     
        t.Update(d.add_patient);
        Response.Redirect("viewuserprofile.aspx");
    }
}
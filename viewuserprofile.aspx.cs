using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewuserprofile : System.Web.UI.Page
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
            Label4.Text = row.first_name;
            Label6.Text = row.last_name;
            Label8.Text = row.email_id;
            Label10.Text = row.phone_number;
            Label12.Text = row.gender;
            Label14.Text = row.previous_medication;
            Label1.Text = row.first_name;
            Label2.Text = row.email_id;
            img5.ImageUrl = row.profile_image;
        }
    }
}
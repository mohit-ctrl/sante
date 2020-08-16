using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewprofile : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.add_doctorTableAdapter t = new DataSetTableAdapters.add_doctorTableAdapter();
    DataSet.add_doctorRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        t.Fill(d.add_doctor);
       
        string pid = Session["doctorid"].ToString();
        row = d.add_doctor.FindBycontact_number(pid);
        Label4.Text = row.name;
        Label6.Text = row.qualification;
        Label8.Text = row.address;
        Label10.Text = row.contact_number;
        Label14.Text = row.specialization;
        Label16.Text = row.gender;
        Label12.Text = row.email_id;
        Label1.Text = row.name;
        Label2.Text = row.email_id;
        img1.ImageUrl = row.image;


    }
}
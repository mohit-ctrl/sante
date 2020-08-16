using DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class doctorlogin : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.add_doctorTableAdapter t = new DataSetTableAdapters.add_doctorTableAdapter();

    DataSet.add_doctorRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        t.Fill(d.add_doctor);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = t.GetDataBy1(Username.Text, Password.Text);
        if (dt.Rows.Count > 0)
        {
            Session["doctorid"] = dt.Rows[0].Field<string>("contact number");
            Session["dname"] = dt.Rows[0].Field<string>("name");
            Response.Redirect("home.aspx");
        }
        else
        {
            Label2.Text = "Invalid Username or Password";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class forget_password :  System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.add_patientTableAdapter t = new DataSetTableAdapters.add_patientTableAdapter();
    DataSet.add_patientRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        t.Fill(d.add_patient);
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        DataTable dt = t.GetDataBy1(TextBox1.Text);
        row = d.add_patient.FindByphone_number(TextBox1.Text);

        if (dt.Rows.Count > 0)
        {
            if (row.first_name == TextBox2.Text)
            {
                Label1.Text = "";
                Label2.Text = row.password;

            }
            else
            {
                Label1.Text = "Answer is not Correct";
                Label2.Text = "";
            }
        }
        else
        {
            Label1.Text = "Could not find the Given Email";
            Label1.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "";
        }

    }
}
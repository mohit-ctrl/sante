using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class diagnosis : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.diagnosisTableAdapter t = new DataSetTableAdapters.diagnosisTableAdapter();
    DataSet.diagnosisRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["doctorid"] == null)
        {
            Response.Redirect("doctorlogin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt;
        DateTime.TryParse(TextBox2.Text, out dt);
        row = d.diagnosis.NewdiagnosisRow();
        row.patientid = DropDownList1.SelectedValue;
        row.doctorid = Session["doctorid"].ToString();
        row.date = dt;
        row.diagnosis = TextBox1.Text;
        d.diagnosis.Rows.Add(row);
        t.Update(d.diagnosis);
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
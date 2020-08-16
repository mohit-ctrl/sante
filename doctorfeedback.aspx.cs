using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctorfeedback : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.doctor_feedbackTableAdapter t = new DataSetTableAdapters.doctor_feedbackTableAdapter();
    DataSet.doctor_feedbackRow row;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        row = d.doctor_feedback.Newdoctor_feedbackRow();
        row.doctorid = Session["mydoctorid"].ToString();

         row.feedback = TextBox1.Text;
        row.patientname = Session["myname"].ToString();
        row.patientemail = Session["myemail"].ToString();
        d.doctor_feedback.Rows.Add(row);
        t.Update(d.doctor_feedback);
        TextBox1.Text = null;

    }
}
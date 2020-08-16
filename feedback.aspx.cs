using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.sitefeedbackTableAdapter t = new DataSetTableAdapters.sitefeedbackTableAdapter();
    DataSet.sitefeedbackRow row;
    DataSetTableAdapters.add_patientTableAdapter q = new DataSetTableAdapters.add_patientTableAdapter();
    DataSet.add_patientRow rows;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = "";
       
        row = d.sitefeedback.NewsitefeedbackRow();
        row.name = TextBox2.Text;
        row.email = TextBox3.Text;
        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        row.feedback = TextBox1.Text;
        row.image = filename;
        if(RadioButton1.Checked == true)
        {
            row.type = "Positive";
        }
        if (RadioButton2.Checked == true)
        {
            row.type = "Negative";
        }
        if (RadioButton3.Checked == true)
        {
            row.type = "Suggestion";
        }
        if (RadioButton4.Checked == true)
        {
            row.type = "Request";
        }
        
     //   d.sitefeedback.Rows.Add(row);
        t.Update(d.sitefeedback);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        fb1.Text = "Submitted successfully";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
    }
}
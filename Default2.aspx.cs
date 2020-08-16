using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    DataSet d = new DataSet();
    DataSetTableAdapters.reportsTableAdapter t = new DataSetTableAdapters.reportsTableAdapter();
    DataSet.reportsRow row;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string filename = "";
        string id = Session["pids"].ToString();
        if (FileUpload1.HasFile)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/reports/") + filename);

        }

        DateTime dt;
        DateTime.TryParse(TextBox2.Text, out dt);

        row = d.reports.NewreportsRow();
        row.patient_id = Convert.ToInt32(id);
        row.report_name = TextBox1.Text;
        row._date = dt;
        row.file = filename;





        d.reports.Rows.Add(row);
        t.Update(d.reports);
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
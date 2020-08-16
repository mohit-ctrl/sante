using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assignedpatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["doctorid"] == null)
        {
            Response.Redirect("doctorlogin.aspx");
        }
        else
        {
            if (GridView1.Rows.Count == 0)
            {
                Label1.Text = "no patient assigned";
            }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ids = GridView1.SelectedRow.Cells[0].Text;
        Session["ids"] = ids;
        Response.Redirect("selectedpatient.aspx");
    }

  
}
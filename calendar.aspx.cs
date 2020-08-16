using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calendar :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }






    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string viewday = GridView1.SelectedRow.Cells[2].Text;
        Session["viewday"] = viewday;
        Response.Redirect("select calendar day.aspx");
    }
}
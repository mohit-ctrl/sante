using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show_ambulance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = SqlDataSource2.ID;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = SqlDataSource3.ID;
    }
}
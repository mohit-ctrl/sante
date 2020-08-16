using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showreports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (GridView1.Rows.Count == 0)
        {
            Label1.Text = "no patient assigned";
        }
    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strurl = "~/reports/" + GridView1.SelectedRow.Cells[6].Text;
        
        WebClient req = new WebClient();
        HttpResponse response = HttpContext.Current.Response;
        response.Clear();
        response.ClearContent();
        response.ClearHeaders();
        response.Buffer = true;
        response.AddHeader("Content-Disposition", "attachment;filename =\"" + Server.MapPath(strurl) + "\"");
        byte[] data = req.DownloadData(Server.MapPath(strurl));
       response.BinaryWrite(data);
        response.Write(strurl);
        response.End();
    }
}
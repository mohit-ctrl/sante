using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string wd = Session["pred2"].ToString();
        double val = Convert.ToDouble(wd);
        val = val * 100;
          
            Label1.Text = "Chances that the patient can have this disease are " +val +"%";
       
           // Image1.ImageUrl = "userimages/positive.jpg";
         //   Label1.Text = "No there are very low  chances that the patient can have this disease" +wd;
       
    }
}
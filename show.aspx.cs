using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string wd = Session["pred3"].ToString();
        double val = Convert.ToDouble(wd);
        if ( val> 0.5) 
        {
              Image1.ImageUrl = "userimages/negative.jpg";
            Label1.Text="Yes there are high chances that the patient can have this disease" ;
        }
       else
        {
            Image1.ImageUrl = "userimages/positive.jpg";
            Label1.Text="No there are very low  chances that the patient can have this disease" ;
        }
        
       
    }
}
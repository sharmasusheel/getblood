using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage6 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random r = new Random();

        int a = r.Next(1, 10);

        Image1.ImageUrl = "sliderimg" + "\\" + a.ToString() + ".jpg";
    }
}

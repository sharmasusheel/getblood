using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Change_password : System.Web.UI.Page
{
    dal d = new dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["adm"] == null)
        {
            Response.Redirect("Default.aspx");

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Text == d.changepass(TextBox1.Text, TextBox2.Text))
        {

            d.updatel( TextBox4.Text , TextBox1.Text);

            Response.Write("data has been updated.....");

        }

        else
        {

            Response.Write("invalid old password............");

        }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Text == d.changepass(TextBox1.Text, TextBox2.Text))
        {

            d.updatel(TextBox1.Text, TextBox4.Text);

            Response.Write("data has been updated.....");

        }

        else
        {

            Response.Write("invalid old password............");

        }

    }
}
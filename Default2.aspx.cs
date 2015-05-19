using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    
    dal1 d = new dal1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox3.Attributes.Add("onFocus", "myFunction(this)");
            TextBox4.Attributes.Add("onFocus", "myFunction(this)");
            
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Session["adm"] = TextBox3.Text;
        if (TextBox4.Text == d.login1(TextBox3.Text, TextBox4.Text))
        {


            Response.Redirect("UserInfo.aspx");



        }

        else
        {

            Response.Write("invalid password.....");

        }

    }
   
    protected void btnclick_Click(object sender, ImageClickEventArgs e)
    {


    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
       

    }
    protected void Create_Click(object sender, EventArgs e)
    {

        //if (TextBox1.Text == d.getemail(TextBox1.Text,))
        //{

            





        //}

        //else
        //{

           

        //}

    }
}
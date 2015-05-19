using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInfo : System.Web.UI.Page
{
    pal2 p = new pal2();
    dal2 d = new dal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adm"] != null)
            {
                fillgrid();
            }
            else
            {

                Response.Redirect("Default.aspx");

            }

        }
    }

    public void fillgrid()
    {
        GridView1.DataSource = p.getdata31();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
           
      

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
      
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        

       
            Session["a"] = e.CommandArgument;

            Response.Redirect("Update_User.aspx");
       
   
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GridView1.DataSource = p.filter_info(TextBox1.Text);

        GridView1.DataBind();
       
    }
}
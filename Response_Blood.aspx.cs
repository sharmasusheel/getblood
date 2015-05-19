using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Response_Blood : System.Web.UI.Page
{
    request_dal d = new request_dal();
    request_pal p = new request_pal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adm"] != null)
            {
                fill_list();
            }
            else
            {
                Response.Redirect("Default.aspx");

            }
        }
    }
    public void fill_list()
    {
        GridView1.DataSource = p.get_data();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
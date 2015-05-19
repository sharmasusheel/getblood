using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    request_pal p = new request_pal();
    dal2 d = new dal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_list();
        }
    }

    public void fill_list()
    {

        GridView1.DataSource = p.get_data();
        GridView1.DataBind();

    }
    public void fillgrid()
    {
        //DataList1.DataSource = p.filldatalllist(Convert.ToInt16(Session["ad"]));
        //DataList1.DataBind();
         

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["ad"] = e.CommandArgument;
        fillgrid();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

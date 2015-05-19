using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Default5 : System.Web.UI.Page
{
    request_pal p = new request_pal();
    dal2 d = new dal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_list();
            fill_list1();
        }

    }
    public void fill_list()
    {

        GridView1.DataSource = p.get_data();
        GridView1.DataBind();
    
    }
    public void fill_list1()
    {
        
        DataList1.DataSource = p.get_data1();
        DataList1.DataBind();

    }


    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Session["a"] = e.CommandArgument;

        Response.Redirect("Default7.aspx");
    }
}
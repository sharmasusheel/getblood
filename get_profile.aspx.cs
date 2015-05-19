using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class get_profile : System.Web.UI.Page
{
    pal2 p = new pal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["a"] != null)
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
        DataList1.DataSource = p.getprofile_data(Session["a"].ToString());

        DataList1.DataBind();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
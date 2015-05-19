using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class search_blood : System.Web.UI.Page
{
    SqlDataAdapter da = new SqlDataAdapter();
    SqlCommand cmd = new SqlCommand();
    SqlConnection slqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    DataTable dt = new DataTable();
    SqlDataReader dr;
    pal2 p = new pal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["a"] != null)
            {
                fillstate();

                DropDownList1.Items.Insert(0, "--Select Blood------");

                //fillgrid();

                DropDownList3.Items.Add("--select city---");
          
            
            }
            else
            {
                Response.Redirect("Default.aspx");

            }

           
        }
    }

    public void fillstate()
    {
        DropDownList2.DataSource = p.getstate();
        DropDownList2.DataTextField = "state_name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0,"--select State--");
    }
    public void fillcity()
    {
        DropDownList3.DataSource = p.getcity(Convert.ToInt32(DropDownList2.SelectedValue));
        DropDownList3.DataTextField = "city_name";
        DropDownList3.DataValueField = "id";
        DropDownList3.DataBind();
        DropDownList2.Items.Insert(0, "--select city--");
    }
    public void fillgrid()
    {
        GridView1.DataSource = p.search_info(DropDownList1.Text,DropDownList2.Text,DropDownList3.Text);
        GridView1.DataBind();
    }

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Thread.Sleep(3000);


        fillgrid();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        fillcity();
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {




            cmd = new SqlCommand("select * from profile_table where id = '" + DataBinder.Eval(e.Row.DataItem, "id") + "'", slqcon);

            slqcon.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            e.Row.ToolTip = dr["contact1"].ToString() + "\n" + dr["contact2"].ToString();

            slqcon.Close();


        }

            
    }
}
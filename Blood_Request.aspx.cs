using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blood_Request : System.Web.UI.Page
{

    request_dal d = new request_dal();
    request_pal p = new request_pal();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["a"] != null)
            {
                DropDownList1.Items.Insert(0, "--select--");
            }
            else
            {

                Response.Redirect("Default.aspx");
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        p.p_name = TextBox1.Text;
        p.suffering_from =TextBox2.Text;
        p.d_name = TextBox3.Text;
        p.hospital_add = TextBox4.Text;
        p.blood_group = DropDownList1.SelectedValue;
        p.required_date = TextBox5.Text;
        p.contact = TextBox6.Text;
        p.place = TextBox7.Text;
        p.message = TextBox8.Text;
        
        Label1.Text = "Data is send..";
        p.insert_data(p);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Profile : System.Web.UI.Page
{
    pal2 p = new pal2();
    dal2 d = new dal2();
    string a, b, c, e;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["a"] != null)
            {
                fillstate();
                getdata();
                TextBox3.Attributes.Add("onFocus", "myFunction(this)");
                TextBox12.Attributes.Add("onFocus", "myFunction(this)");
                TextBox11.Attributes.Add("onFocus", "myFunction(this)");
                TextBox13.Attributes.Add("onFocus", "myFunction(this)");
                TextBox6.Attributes.Add("onFocus", "myFunction(this)");
                TextBox7.Attributes.Add("onFocus", "myFunction(this)");
                TextBox8.Attributes.Add("onFocus", "myFunction(this)");
                TextBox9.Attributes.Add("onFocus", "myFunction(this)");
                DropDownList2.Attributes.Add("onFocus", "myFunction(this)");
                DropDownList3.Attributes.Add("onFocus", "myFunction(this)");
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

        }
    }

    public void getdata()
    {
        p.email = Session["a"].ToString();
       
        string str = d.getprofdata1(p.email);

        string[] fstr = str.Split(',');

        for (int i = 0; i < fstr.Length; i++)
        {
            if (i == 0)
            {

               Label1.Text = fstr[i].ToString();

            }
            if (i == 3)
            {

                Label5.Text = fstr[i].ToString();

            }
            if (i == 2)
            {

              Label4.Text   = fstr[i].ToString();

            }
            if (i == 1)
            {

                Label3.Text = fstr[i].ToString();

            }

            if( i == 4)
            {

                Label2.Text = fstr[i].ToString();
            }
        }
       
        

        Response.Write(a + b+ c+ e);
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        getdata();

        p.name = Label1.Text;



        p.address = Label5.Text;

        p.email = Label3.Text;

        p.bloodgroup = Label4.Text;
            p.dob=TextBox12.Text;

            p.weight=TextBox3.Text;

            p.gender = Label2.Text;
          
            p.lastdonateon=TextBox11.Text;
            p.address = Label5.Text;
            p.state = DropDownList2.SelectedValue;
        
           
            p.city=DropDownList3.SelectedValue;
            p.district=TextBox13.Text;
            p.taluk=TextBox6.Text;
            p.contact1=TextBox7.Text;
            p.contact2=TextBox8.Text;
           
            p.comment=TextBox9.Text;
         if (FileUpload1.HasFile)
        {
          
           
            FileUpload1.SaveAs(Server.MapPath("userimage"+"//" + FileUpload1.FileName));
             p.userimage = "userimage"+"\\" + FileUpload1.FileName;

           
        }
         d.insertprofile(p);
         Response.Write("Data Saved.....");
          
    }

    public void fillstate()
    {
        DropDownList2.DataSource = p.getstate();
        DropDownList2.DataTextField = "state_name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "--select---");
    }
    public void fillcity()
    {
        DropDownList3.DataSource = p.getcity(Convert.ToInt32(DropDownList2.SelectedValue));
        DropDownList3.DataTextField = "city_name";
        DropDownList3.DataValueField = "id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0,"--select---");
    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillcity();
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        fillcity();
    }
}
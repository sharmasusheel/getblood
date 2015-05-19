using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using ASPSnippets.SmsAPI;

public partial class _Default : System.Web.UI.Page
{
    pal p = new pal();
    dal d = new dal();

   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            TextBox7.Attributes.Add("onblur", "checkEmail()");

            TextBox3.Attributes.Add("onFocus", "myFunction(this)");
            TextBox1.Attributes.Add("onFocus", "myFunction(this)");
            TextBox2.Attributes.Add("onFocus", "myFunction(this)");
            TextBox5.Attributes.Add("onFocus", "myFunction(this)");
            TextBox6.Attributes.Add("onFocus", "myFunction(this)");
            TextBox6.Attributes.Add("onblur", "ValidateMobNumber(TextBox6)");
            TextBox7.Attributes.Add("onFocus", "myFunction(this)");
            
            TextBox8.Attributes.Add("onFocus", "myFunction(this)");
            TextBox9.Attributes.Add("onFocus", "myFunction(this)");
            TextBox9.Attributes.Add("onblur", "confirmPass()");
            DropDownList1.Attributes.Add("onFocus", "myFunction(this)");

          //  DropDownList2.Attributes.Add("onFocus", "myFunction(this)");
        }
        

    }
  
    
    protected void ImageButton1_Click11(object sender, ImageClickEventArgs e)
    {
       
        

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        string s, s1, s2;
        Session["a"] = TextBox1.Text;
        s = TextBox1.Text;
        s1 = TextBox2.Text;
        if(s == "")
        {
            s= " kog6$";
            Label3.Text = "Email  is required";
            Label3.ForeColor = Color.Red;
        }
        if(s1 == "")
        {

            s1= " kog6&";
            Label4.Text = "Password  required";
            Label4.ForeColor = Color.Red;
        }

        s2 = d.loginuser(s, s1);
        if (s1 == s2)
        {
            Response.Redirect("User_Profile.aspx");
        }
        else
        {
            Label1.Text = "*Invalid Password & Email_id";
        }

        TextBox1.Text = "";
        TextBox2.Text = "";

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    public void etdata()
    {
    if(TextBox3.Text == null)
{

    p.name = "not availavble";

}

    if (TextBox5.Text == null)
    {

        p.address = "not availavble";

    }
    if (TextBox6.Text == null)
    {
        p.contact = "not available";
    }
    if (TextBox8.Text == null)
    {
        p.password = "not available";
    }
    if (TextBox9.Text == null)
    {
        p.confirmpass = "not available";
    }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Session["mob"] = TextBox6.Text;
        p.name = TextBox3.Text;




        if (TextBox7.Text == p.getemail(TextBox7.Text))
        {

            if (TextBox7.Text == "")
            {
                Label5.Text = "please enter some value";

            }

            else
            {
                Label5.Text = "email is already ragistered....";

                Label5.ForeColor = Color.Red;
            }
        }
        else
        {
            p.gender = RadioButtonList2.SelectedValue;
            p.blood = DropDownList1.SelectedValue;
            p.address = TextBox5.Text;
            p.contact = TextBox6.Text;

            p.password = TextBox8.Text;
            p.confirmpass = TextBox9.Text;
            p.email = TextBox7.Text;

            d.adddata(p);


            SMS.APIType = SMSGateway.Site2SMS;
            SMS.MashapeKey = "T9aJHeJ35lmshRg82Py2eaVg9biYp1aE28hjsn3VjrKTA2DBME";
            SMS.Username = "7898625467";
            SMS.Password = "929406";

            TextBox txt = new TextBox();
            txt.Text = "Congratulation yor now member of get blood now welcome to getblood..";
            if (TextBox6.Text.Trim().IndexOf(",") == -1)
            {
                //Single SMS
                SMS.SendSms(TextBox6.Text.Trim(), txt.Text.Trim());
            }
            else
            {
                //Multiple SMS
                List<string> numbers = TextBox6.Text.Trim().Split(',').ToList();
                SMS.SendSms(numbers, txt.Text.Trim());
            }
         
            Label2.Text = "*Registered Successfully";


        }


            
      
          
       
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
       // RadioButtonList2.Text = "";
       // DropDownList1.SelectedValue = "";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
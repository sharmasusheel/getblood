using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ASPSnippets.SmsAPI;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        ImageButton1.Visible = false;
        Response.Redirect("~/Blood_Request.aspx");
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random r = new Random();

        int a = r.Next(1, 10);

        Image1.ImageUrl = "sliderimg" + "\\" + a.ToString() + ".jpg";
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void change_pass_Click(object sender, EventArgs e)
    {
        TextBox txtmob = new TextBox();
        
       
        string s = TextBox1.Text;
        string v = Session["a"].ToString();
        cmd = new SqlCommand("select * from Donor_table where confirm_password = '" + TextBox1.Text + "' and email_id='"+v+"' ", sqlcon);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           

            txtmob.Text = dr["contact_no"].ToString();
            cmd = new SqlCommand("update  Donor_table set confirm_password = '" + TextBox3.Text + "' where email_id='" + v + "'  ", sqlcon);
            sqlcon.Close();
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            Label1.Text = "password has been changed....";
            TextBox txtpass = new TextBox();
            txtpass.Text = "your password has been change your new password is " + TextBox3.Text;
            SMS.APIType = SMSGateway.Site2SMS;
            SMS.MashapeKey = "T9aJHeJ35lmshRg82Py2eaVg9biYp1aE28hjsn3VjrKTA2DBME";
            SMS.Username = "7898625467";
            SMS.Password = "929406";
            if (txtmob.Text.Trim().IndexOf(",") == -1)
            {
                //Single SMS
                SMS.SendSms(txtmob.Text.Trim(), txtpass.Text.Trim());
            }
            else
            {
                //Multiple SMS
                List<string> numbers = txtmob.Text.Trim().Split(',').ToList();
                SMS.SendSms(numbers, txtpass.Text.Trim());
            }

           

        }
        else
        {
            Label1.Text = "old password does't match.....";
        }
        sqlcon.Close();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        TextBox txtmob = new TextBox();
        txtmob.Text = Session["mob"].ToString();

        string s = TextBox1.Text;
        string v = Session["a"].ToString();
        cmd = new SqlCommand("select * from Donor_table where confirm_password = '" + TextBox1.Text + "' and email_id='" + v + "' ", sqlcon);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            sqlcon.Close();
            sqlcon.Open();

            cmd = new SqlCommand("update  Donor_table set confirm_password = '" + TextBox3.Text + "' where email_id='" + v + "'  ", sqlcon);
            cmd.ExecuteNonQuery();
            Label1.Text = "password has been changed....";
            TextBox txtpass = new TextBox();
            txtpass.Text = "your password has been change your new password is " + TextBox3.Text;
            SMS.APIType = SMSGateway.Site2SMS;
            SMS.MashapeKey = "T9aJHeJ35lmshRg82Py2eaVg9biYp1aE28hjsn3VjrKTA2DBME";
            SMS.Username = "7898625467";
            SMS.Password = "929406";
            if (txtmob.Text.Trim().IndexOf(",") == -1)
            {
                //Single SMS
                SMS.SendSms(txtmob.Text.Trim(), txtpass.Text.Trim());
            }
            else
            {
                //Multiple SMS
                List<string> numbers = txtmob.Text.Trim().Split(',').ToList();
                SMS.SendSms(numbers, txtpass.Text.Trim());
            }

            sqlcon.Close();

        }
        else
        {
            Label1.Text = "old password does't match.....";
        }
        sqlcon.Close();
    }
    protected void forget_pass_Click(object sender, EventArgs e)
    {
        TextBox txtmob = new TextBox();
        txtmob.Text = Session["mob"].ToString();

        string s = TextBox1.Text;
        string v = Session["a"].ToString();
        cmd = new SqlCommand("select * from Donor_table where confirm_password = '" + TextBox1.Text + "' and email_id='" + v + "' ", sqlcon);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            sqlcon.Close();
            sqlcon.Open();

            cmd = new SqlCommand("update  Donor_table set confirm_password = '" + TextBox3.Text + "' where email_id='" + v + "'  ", sqlcon);
            cmd.ExecuteNonQuery();
            Label1.Text = "password has been changed....";
            TextBox txtpass = new TextBox();
            txtpass.Text = "your password has been change your new password is " + TextBox3.Text;
            SMS.APIType = SMSGateway.Site2SMS;
            SMS.MashapeKey = "T9aJHeJ35lmshRg82Py2eaVg9biYp1aE28hjsn3VjrKTA2DBME";
            SMS.Username = "7898625467";
            SMS.Password = "929406";
            if (txtmob.Text.Trim().IndexOf(",") == -1)
            {
                //Single SMS
                SMS.SendSms(txtmob.Text.Trim(), txtpass.Text.Trim());
            }
            else
            {
                //Multiple SMS
                List<string> numbers = txtmob.Text.Trim().Split(',').ToList();
                SMS.SendSms(numbers, txtpass.Text.Trim());
            }

            sqlcon.Close();

        }
        else
        {
            Label1.Text = "old password does't match.....";
        }
        sqlcon.Close();
    }
}

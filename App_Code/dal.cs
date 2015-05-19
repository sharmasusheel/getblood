using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dal
/// </summary>
public class dal
{

    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;




    public string getemail(string s)
    {
          
        cmd = new SqlCommand("select * from Donor_table where email_id = @email",sqlcon);

        cmd.Parameters.AddWithValue("@email", s);

        sqlcon.Open();

        dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            s = dr["email_id"].ToString();
            sqlcon.Close();

            return s;
        }
        else
        {


            return "#$%^vfdfgf8vt4&";

        }


    }


    public void updatel(string login, string pass)
    {

        cmd = new SqlCommand("update adminlogintbl set pass  = @pass where logid = @id ", sqlcon);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@id", login);
        sqlcon.Close();
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    public string changepass(string s , string s2 )
    {

        cmd = new SqlCommand("select * from adminlogintbl where logid = @log  and pass  = @pass", sqlcon);

        cmd.Parameters.AddWithValue("@log",s);
        cmd.Parameters.AddWithValue("@pass",s2);
        sqlcon.Open();
        dr = cmd.ExecuteReader();

        if(dr.Read())
        {

            string s5 = dr["pass"].ToString();
          
            return s5 ;
        }

        sqlcon.Close();
        return " @$****23";

    }


    public void adddata(pal p)
    {
        cmd = new SqlCommand("insertdata", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", p.name);
        cmd.Parameters.AddWithValue("@gender", p.gender);
        cmd.Parameters.AddWithValue("@blood", p.blood);
        cmd.Parameters.AddWithValue("@address", p.address);
        cmd.Parameters.AddWithValue("@contact", p.contact);
        cmd.Parameters.AddWithValue("@email", p.email);
        cmd.Parameters.AddWithValue("@password", p.password);
        cmd.Parameters.AddWithValue("@confirmpass", p.confirmpass);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }


    public string loginuser(string email,string password)
    {
        cmd = new SqlCommand("select * from Donor_table where email_id=@email and confirm_password=@password", sqlcon);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@password", password);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string s1 = dr["confirm_password"].ToString();
            return s1;
        }
        sqlcon.Close();
        return "hkjhk$&902jka1*%**@";
    }

}
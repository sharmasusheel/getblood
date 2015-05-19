using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dal1
/// </summary>
public class dal1
{

    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da=new SqlDataAdapter();
    SqlDataReader dr;
    DataTable dt;
    string s, s1;


    public string getemail(string a , string b)
    {

        cmd = new SqlCommand("select * from Donor_table where email_id = @s and email_id = @b ", sqlcon);

        cmd.Parameters.AddWithValue("@s", a);
        cmd.Parameters.AddWithValue("@b", b);

        sqlcon.Open();
        dr = cmd.ExecuteReader();

        if(dr.Read())
        {
            s = dr["email_id"].ToString();
           

            return s;
        }

        sqlcon.Close();

        return "jkhkj4567khjkg@#$%&&!!vghfghf";
    }
    public void insertdata(pal1 p)
    { 
    cmd=new SqlCommand("insertadmin",sqlcon);
        cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", p.id);
        cmd.Parameters.AddWithValue("@fname",p.fname);
        cmd.Parameters.AddWithValue("@lname",p.lname);
        cmd.Parameters.AddWithValue("@age",p.age);
        cmd.Parameters.AddWithValue("@bloodgroup",p.bloodgroup);
        cmd.Parameters.AddWithValue("@gender",p.gender);
        cmd.Parameters.AddWithValue("@postaladd",p.postaladd);
        cmd.Parameters.AddWithValue("@state",p.state);
        cmd.Parameters.AddWithValue("@city",p.city);
        cmd.Parameters.AddWithValue("@contactno",p.contactno);
        cmd.Parameters.AddWithValue("@email",p.email);
        
        cmd.Parameters.AddWithValue("@password",p.password);
        cmd.Parameters.AddWithValue("@confirmpass",p.confirmpass);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    
    }

    public DataTable getstate()
    {
        da = new SqlDataAdapter("getstate", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataTable getcity(int id)
    {
        da = new SqlDataAdapter("getcity", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@id", id);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public string login1(string email, string pass)
    {
        cmd = new SqlCommand("select * from adminlogintbl where logid=@email and pass=@pass", sqlcon);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@pass", pass);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            string s = dr["pass"].ToString();
            return pass;
        }
        sqlcon.Close();
        return "jkhkj4567khjkg@#$%&&!!vghfghf ";

    }


    public string login(string email, string pass)
    { 
    cmd=new SqlCommand("select * from Admin_table where email=@email and password=@pass", sqlcon);
        cmd.Parameters.AddWithValue("@email",email);
         cmd.Parameters.AddWithValue("@pass",pass);
         sqlcon.Open();
         dr = cmd.ExecuteReader();
         if (dr.Read())
         {
             return pass;
         }
         sqlcon.Close();
         return " ";

    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dal2
/// </summary>
public class dal2
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da=new SqlDataAdapter();
    DataTable dt;
    DataSet ds;

    SqlDataReader dr;
   


    public DataSet getdata3(string e)
    {
        da = new SqlDataAdapter("select * from profile_table where id = @id", sqlcon);
        da.SelectCommand.Parameters.AddWithValue("@id", e);
        ds = new DataSet();
        da.Fill(ds);

        return ds;
    }
    public DataTable getdata31()
    {
        da = new SqlDataAdapter("select * from profile_table", sqlcon);

        dt = new DataTable();
        da.Fill(dt);

        return dt;
    }

    public void insertprofile(pal2 p)
    {
        try
        {
            cmd = new SqlCommand("profiledata", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", p.id);
            cmd.Parameters.AddWithValue("@name", p.name);
            cmd.Parameters.AddWithValue("@gender", p.gender);
            cmd.Parameters.AddWithValue("@dob", p.dob);
            cmd.Parameters.AddWithValue("@weight", p.weight);
            cmd.Parameters.AddWithValue("@bloodgroup", p.bloodgroup);
            cmd.Parameters.AddWithValue("@lastdonateon", p.lastdonateon);
            cmd.Parameters.AddWithValue("@address", p.address);
            cmd.Parameters.AddWithValue("@state", p.state);
            cmd.Parameters.AddWithValue("@city", p.city);
            cmd.Parameters.AddWithValue("@district", p.district);
            cmd.Parameters.AddWithValue("@taluk", p.taluk);
            cmd.Parameters.AddWithValue("@contact1", p.contact1);
            cmd.Parameters.AddWithValue("@contact2", p.contact2);
            cmd.Parameters.AddWithValue("@email", p.email);
            cmd.Parameters.AddWithValue("@comment", p.comment);
            cmd.Parameters.AddWithValue("@userimage", p.userimage);
            sqlcon.Close();
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }

        catch
        {



        }
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

    public DataTable user_info()
    {

        da = new SqlDataAdapter("userinfo", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
     
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable search_info(string blood , string state , string city)
    {

        da = new SqlDataAdapter("select * from profile_table where bloodgroup = @bd and state = @state and city = @city", sqlcon);
      //  da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@bd", blood);
        da.SelectCommand.Parameters.AddWithValue("@state", state);
        da.SelectCommand.Parameters.AddWithValue("@city", city);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    public DataTable filter_info(string name)
    {
        da = new SqlDataAdapter("filterdata", sqlcon);
        
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@name", name);
     
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public string getprofdata1(string f)
    {
        string s, s1, s2, s3, s4;
        cmd = new SqlCommand("select * from Donor_table where email_id = @email", sqlcon);
        cmd.Parameters.AddWithValue("@email",f);
        sqlcon.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            s = dr["name"].ToString();
            s1 = dr["email_id"].ToString();
            s2 = dr["blood_group"].ToString();
            s3 = dr["address"].ToString();
            s4 = dr["gender"].ToString();


            return s+","+ s1 + "," + s2 + "," + s3 + "," + s4;
        }

        sqlcon.Close();

        return "*&^gvaieeert0456";

    }

    public DataSet select_data()

    {
        da = new SqlDataAdapter("getalldata", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public DataSet getprofile_data(string email)
    {
        da = new SqlDataAdapter("getprofiledata", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@email", email);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void update_data(pal2 p)
    {
        cmd = new SqlCommand("updatedata", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", p.id);
        cmd.Parameters.AddWithValue("@name", p.name);
        cmd.Parameters.AddWithValue("@gender", p.gender);
        cmd.Parameters.AddWithValue("@dob", p.dob);
        cmd.Parameters.AddWithValue("@weight", p.weight);
        cmd.Parameters.AddWithValue("@bloodgroup", p.bloodgroup);
        cmd.Parameters.AddWithValue("@lastdonateon", p.lastdonateon);
        cmd.Parameters.AddWithValue("@address", p.address);
        cmd.Parameters.AddWithValue("@state", p.state);
        cmd.Parameters.AddWithValue("@city", p.city);
        cmd.Parameters.AddWithValue("@district", p.district);
        cmd.Parameters.AddWithValue("@taluk", p.taluk);
        cmd.Parameters.AddWithValue("@contact1", p.contact1);
        cmd.Parameters.AddWithValue("@contact2", p.contact2);
        cmd.Parameters.AddWithValue("@email", p.email);
        cmd.Parameters.AddWithValue("@comment", p.comment);
        cmd.Parameters.AddWithValue("@userimage", p.userimage);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }


    public void delete_data(pal2 p)
    {
        cmd = new SqlCommand("deletedata", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", p.id);
      
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }



    
    
    }
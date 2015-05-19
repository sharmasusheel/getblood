using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for request_dal
/// </summary>
public class request_dal
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    DataSet ds;
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;

    public DataSet filldatalllist(int id)
    {

        da = new SqlDataAdapter("select * from request_table where id = @id", sqlcon);

        da.SelectCommand.Parameters.AddWithValue("@id",id);
        ds = new DataSet();
        da.Fill(ds);

        return ds;
    }

    public void insert_data(request_pal p)
    {
        cmd = new SqlCommand("request_insert", sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", p.id);
        cmd.Parameters.AddWithValue("@p_name", p.p_name);
        cmd.Parameters.AddWithValue("@suffering_from", p.suffering_from);
        cmd.Parameters.AddWithValue("@d_name", p.d_name);
        cmd.Parameters.AddWithValue("@hospital_add", p.hospital_add);
        cmd.Parameters.AddWithValue("@blood_group", p.blood_group);
        cmd.Parameters.AddWithValue("@required_date", p.required_date);
        cmd.Parameters.AddWithValue("@contact", p.contact);
        cmd.Parameters.AddWithValue("@place", p.place);
        cmd.Parameters.AddWithValue("@message", p.message);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
    }
    public DataSet get_data1()
    {
        da = new SqlDataAdapter("respond_data", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
    public DataTable get_data()
    {
        da = new SqlDataAdapter("respond_data", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataTable ds = new DataTable();
        da.Fill(ds);
        return ds;

    }

   
}
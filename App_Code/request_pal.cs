using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for request_pal
/// </summary>
public class request_pal:request_dal
{

    public int id { set; get; }
    public string p_name { set; get; }
    public string suffering_from { set; get; }
    public string d_name { set; get; }
    public string hospital_add { set; get; }
    public string blood_group { set; get; }
    public string required_date { set; get; }
    public string contact { set; get; }
    public string place { set; get; }
    public string message { set; get; }

}
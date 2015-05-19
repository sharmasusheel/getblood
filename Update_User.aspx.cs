using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update_User : System.Web.UI.Page
{
    pal2 p = new pal2();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           if(Session["adm"] != null)
           {
                fill_list();
           }
 
            else
           {
               Response.Redirect("Default.aspx");


           }
           }
        }
    


    public void fill_list()
    {
       
        DataList1.DataSource = p.getdata3(Session["a"].ToString());
        
        DataList1.DataBind();
    
    }



    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
       p.id = Convert.ToInt16(DataList1.DataKeys[e.Item.ItemIndex].ToString());
       p.delete_data(p);
        fill_list();
        Response.Write("Data Deleted....");

    }



    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Label lblGender = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label3");
        Label lblblood = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label6");
        Label lblCity = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label9");
        Label lblState = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label10");
        
        DataList1.EditItemIndex = e.Item.ItemIndex;
        fill_list();

        DropDownList drpStateGrid = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList2");

        drpStateGrid.DataSource = p.getstate();
        drpStateGrid.DataTextField = "state_name";
        drpStateGrid.DataValueField = "id";
        drpStateGrid.DataBind();

        foreach (ListItem li in drpStateGrid.Items)
        {
            if (li.Text == lblState.Text)
            {
                li.Selected = true;
            }
        }


        DropDownList drpCityGrid = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList3");
        drpCityGrid.DataSource = p.getcity(Convert.ToInt32(drpStateGrid.SelectedItem.Value));
        drpCityGrid.DataTextField = "city_name";
        drpCityGrid.DataValueField = "id";
        drpCityGrid.DataBind();

        foreach (ListItem li in drpCityGrid.Items)
        {
            if (li.Text == lblCity.Text)
            {
                li.Selected = true;
            }
        }

        RadioButtonList rdoGenderGrid = (RadioButtonList)DataList1.Items[e.Item.ItemIndex].FindControl("RadioButtonList1");

        foreach (ListItem li in rdoGenderGrid.Items)
        {
            if (li.Text == lblGender.Text)
            {
                li.Selected = true;
            }
        }

        DropDownList drpblood = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList1");
       
       
        drpblood.DataBind();

        foreach (ListItem li in drpblood.Items)
        {
            if (li.Text == lblblood.Text)
            {
                li.Selected = true;
            }
        }



    }




    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        p.id = Convert.ToInt16(DataList1.DataKeys[e.Item.ItemIndex].ToString());
        TextBox txtname = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1");
        RadioButtonList rdogender = (RadioButtonList)DataList1.Items[e.Item.ItemIndex].FindControl("RadioButtonList1");
        TextBox txtdob = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox2");
        TextBox txtweight = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox3");
        DropDownList dropblood = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList1");
        TextBox txtlastdonate = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox4");
        TextBox txtadd = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox5");
        DropDownList dropstate= (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList2");
         DropDownList dropcity = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList3");
         TextBox txtdst = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox6");
         TextBox txttaluk = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox7");
         TextBox txtcont1 = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox8");
         TextBox txtcont2 = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox9");
         TextBox txtemail = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox10");
         TextBox txtcomment = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox11");
         FileUpload flp = (FileUpload)DataList1.Items[e.Item.ItemIndex].FindControl("FileUpload1");
         Image img1 = (Image)DataList1.Items[e.Item.ItemIndex].FindControl("Image");


         if (flp.HasFile)
         {
             flp.SaveAs(Server.MapPath("userimage" + "\\" + flp.FileName));
             p.userimage = "userimage" + "\\" + flp.FileName;
         }
         else
         {
             p.userimage = img1.ImageUrl ;

         }
             p.name = txtname.Text;
             p.gender = rdogender.Text;
             p.dob = txtdob.Text;
             p.weight=txtweight.Text;
             p.bloodgroup=dropblood.SelectedValue;
             p.lastdonateon=txtlastdonate.Text;
             p.address=txtadd.Text;
             p.state=dropstate.SelectedValue;
             p.city=dropcity.SelectedValue;
             p.district=txtdst.Text;
             p.taluk=txttaluk.Text;
             p.contact1=txtcont1.Text;
             p.contact2=txtcont2.Text;
             p.email=txtemail.Text;
             p.comment=txtcomment.Text;

             p.update_data(p);
             Response.Write("Data Updated...");
             DataList1.EditItemIndex=-1;
             fill_list();

            

      
          

         DataList1.EditItemIndex = -1;
         fill_list();
             
         
         }






    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        fill_list();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList drpStateGrid = (DropDownList)DataList1.Items[DataList1.EditItemIndex].FindControl("DropDownList2");
        DropDownList drpCityGrid = (DropDownList)DataList1.Items[DataList1.EditItemIndex].FindControl("DropDownList3");
        drpCityGrid.DataSource = p.getcity(Convert.ToInt32(drpStateGrid.SelectedItem.Value));
        drpCityGrid.DataTextField = "city_name";
        drpCityGrid.DataValueField = "id";
        drpCityGrid.DataBind();

    }
}
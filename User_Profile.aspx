

<%@ Page Title="" Language="C#" Theme="SkinFile" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="User_Profile.aspx.cs" Inherits="User_Profile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div>
      <table style="border-style: solid; border-radius:25px; background-color:yellowgreen; border-width: 2px">
        <tr>
          <center>  <td class="auto-style6">&nbsp;</td>  <td colspan="2" class="auto-style6"><h4 style="color:white; font-size: 23px; text-decoration: underline overline blink; text-transform: uppercase; font-family: georgia, 'Times New Roman', Times, serif;">Set up your profile</h4><br />
            </td></center>
        </tr> 
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28" colspan="2"><h5 style="color:#006600; font-size: 20px; text-decoration: underline; font-family: georgia, 'Times New Roman', Times, serif;">Donor Infromation:-</h5>
            </td>
        </tr> 
          
       <tr>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Name</td>
            <td class="auto-style9" align="center">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">
                &nbsp;</td>
            <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">
                Date of Birth*</td>
            <td class="auto-style10" align="center">

                

                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

                

                <cc1:CalendarExtender ID="TextBox12_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox12">
                </cc1:CalendarExtender>

                

            </td>
        </tr> 
        <tr>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Weight*</td>
            <td class="auto-style9" align="center">
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
            </td>
        </tr> 
         
         
         
        <tr>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Last Donate On*</td>
            <td class="auto-style11" align="center">
                
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                
                <cc1:CalendarExtender ID="TextBox11_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox11">
                </cc1:CalendarExtender>
                
            </td>
        </tr>                                  
         
         
         
        <tr>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Ghender</td>
            <td class="auto-style11" align="center">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>                                  
         
         
         
        <tr>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style12" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Address</td>
            <td class="auto-style11" align="center">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>                                  
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <br />
                <br />
              <h5 style="color:#336600; font-size: 20px; text-decoration: underline; font-family: georgia, 'Times New Roman', Times, serif;"> Contact_information:-</h5> </td>
        </tr>                           
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>                           
        <tr>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Email_id</td>
            <td class="auto-style9" align="center">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>  
        <tr>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">bloodgroup</td>
            <td class="auto-style9" align="center">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>  
        <tr>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style8" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">State</td>
            <td class="auto-style9" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#CCFFFF" AutoPostBack="True" Height="19px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" Width="99px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="FIELD IS REQIRED....."></asp:RequiredFieldValidator>
            </td>
        </tr>  
        <tr>
            <td class="auto-style13" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style13" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">City</td>
            <td class="auto-style14" align="center">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DropDownList2" />
                    </Triggers>
                    <ContentTemplate>
                       
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                       
                        <asp:DropDownList ID="DropDownList3" Width="99px" BackColor="#CCFFFF" Height="17px" runat="server">
                </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList3" ErrorMessage="FIELD IS REQIRED....."></asp:RequiredFieldValidator>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </td>
        </tr>  
        <tr>
            <td class="auto-style13" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style13" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">District*</td>
            <td class="auto-style14" align="center">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td class="auto-style25" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style25" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Taluk</td>
            <td class="auto-style15" align="center">
                <asp:TextBox ID="TextBox6" runat="server" Width="119px" Height="16px"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td class="auto-style18" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style18" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Contact No-1*</td>
            <td class="auto-style17" align="center">
                <asp:TextBox ID="TextBox7" runat="server" Width="119px" Height="16px"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td class="auto-style19" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style19" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Contact No-2 *</td>
            <td class="auto-style20" align="center">
                <asp:TextBox ID="TextBox8" runat="server" Width="109px" Height="18px"></asp:TextBox>
            </td>
        </tr>  
       
        <tr>
            <td class="auto-style26" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style26" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">Comment</td>
            <td class="auto-style27" align="center">
                <asp:TextBox ID="TextBox9" runat="server"  TextMode="MultiLine" Width="196px" Height="54px"></asp:TextBox>
            </td>
        </tr>  
        <tr>
            <td class="auto-style23" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC">&nbsp;</td>
            <td class="auto-style23" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px; color: #3333CC" align="center">User Image</td>
            <td class="auto-style24" align="center">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="FIELD IS REQIRED....."></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>  
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td colspan="2" class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/sub_mit.jpg" Height="40px" OnClick="ImageButton2_Click" Width="128px" />
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Reset_button.jpg" Height="41px" Width="125px" OnClick="ImageButton1_Click" />
            </td>
        </tr>  
           
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td colspan="2" class="auto-style4">
                </td>
        </tr>  
           
    </table>
    </div>
</asp:Content>



<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder5">
    <script src="JavaScript2.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 38px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style4 {
            height: 39px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            height: 54px;
        }
        .auto-style8 {
            height: 34px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style9 {
        height: 34px;
        width: 505px;
    }
        .auto-style10 {
            width: 505px;
            height: 38px;
        }
        .auto-style11 {
            width: 505px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style13 {
            height: 43px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style14 {
            width: 505px;
            height: 43px;
        }
        .auto-style15 {
            width: 505px;
            height: 39px;
        }
        .auto-style17 {
            width: 505px;
            height: 59px;
        }
        .auto-style18 {
            height: 59px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style19 {
            height: 36px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style20 {
            height: 36px;
            width: 505px;
        }
        .auto-style23 {
            height: 171px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style24 {
            height: 171px;
        }
        .auto-style25 {
            height: 39px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style26 {
            height: 56px;
            width: 191px;
            font-weight: bold;
        }
        .auto-style27 {
            width: 505px;
            height: 56px;
        }
        .auto-style28 {
        height: 52px;
    }
    </style>
</asp:Content>





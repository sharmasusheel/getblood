<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" Theme="SkinFile" AutoEventWireup="true" CodeFile="Change_password.aspx.cs" Inherits="Change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
      
  <title>jQuery UI Dialog - Animation</title>
  </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div >
 -
        <table style="height: 340px; width: 655px; border-radius:25px; background-color:yellowgreen">
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;">&nbsp;</td>
                <td class="auto-style1" colspan="2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;"><strong><center>Change Password</center></strong></td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">&nbsp;</td>
                <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC"><strong>Email_id</strong></td>
                <td>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">&nbsp;</td>
                <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC"><strong>Old Password</strong></td>
                <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">&nbsp;</td>
                <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC"><strong>New Password</strong></td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">&nbsp;</td>
                <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC"><strong>Confirm Password</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
                    <br />
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/sub_mit.jpg" Height="38px" runat="server" Width="114px" OnClick="ImageButton1_Click1"  />
                </td>
            </tr>
        </table>
    </div>

 

    
</asp:Content>


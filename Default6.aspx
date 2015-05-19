<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="height: 340px; width: 655px">
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;">&nbsp;</td>
                <td class="auto-style1" colspan="2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;"><strong>Change Password</></strong></td>
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
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

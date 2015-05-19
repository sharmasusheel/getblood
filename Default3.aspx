<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="2">
                    Admin Login
                </td>
            </tr>
             <tr>
                <td>
                    Email Id
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="146px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="146px" ></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td colspan="2">

                    <asp:Button ID="Button1" runat="server" Text="Login" />
&nbsp;

                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

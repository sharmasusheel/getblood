

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Theme="SkinFile" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JavaScript3.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 254px;
            height: 58px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 58px;
        }
    .auto-style6 {
        text-decoration: underline;
    }
    </style>

    <script type="text/javascript">
        
            function myFunction(x) {
                x.style.background = "#CCCCFF";
            }

            function phonenumber(inputtxt) {
                var phoneno = /^\d{10}$/;
                if (inputtxt.value.match(phoneno)) {
                    return true;
                }
                else {
                    alert("Not a valid Phone Number");
                    return false;
                }
            }
        
    </script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style6" colspan="2" style="font-size: 13px; color: #00A6A6"><strong>Doner Login</strong></td>
            
        </tr>
        <tr>
            <td class="auto-style5">Email_id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"  Width="103px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ></asp:Label>
            </td>
           
        </tr>
       
        <tr>
            <td class="auto-style5">Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" OnTextChanged="TextBox2_TextChanged" Width="105px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" ImageUrl="~/pill_button_blank_red.jpg" runat="server" Height="32px" Width="73px" OnClick="ImageButton2_Click" />
                <asp:Label ID="Label1" runat="server" ForeColor="Maroon" ></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="auto-style1">
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="174px"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" BackColor="#CCFFFF" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" BackColor="#CCFFFF" runat="server" Height="16px">
                        <asp:ListItem>-Select-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A1+</asp:ListItem>
                        <asp:ListItem>A1-</asp:ListItem>
                        <asp:ListItem>A2+</asp:ListItem>
                        <asp:ListItem>A2-</asp:ListItem>
                        <asp:ListItem>B1+</asp:ListItem>
                        <asp:ListItem>B1-</asp:ListItem>
                        <asp:ListItem>A1B+</asp:ListItem>
                        <asp:ListItem>A1B-</asp:ListItem>
                        <asp:ListItem>A2B+</asp:ListItem>
                        <asp:ListItem>A2B-</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="170px" BackColor="#CCFFFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Contact_no</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="173px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email_Id</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="174px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="24px" TextMode="Password" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox9" runat="server" Height="21px" TextMode="Password" Width="173px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton1" OnClientClick="return  phonenumber(ContentPlaceHolder2_TextBox6)" ImageUrl="~/register.jpg" runat="server" Width="90px" Height="33px" OnClick="ImageButton1_Click"  />
                    <asp:Label ID="Label2" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            </table>
</asp:Content>


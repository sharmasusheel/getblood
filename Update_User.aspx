<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Update_User.aspx.cs" Inherits="Update_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" DataKeyField="id"   OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="638px">
        <EditItemTemplate>
            <table class="auto-style6" >
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">ID</td>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label17" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td rowspan="5">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Gender</td>
                    <td class="auto-style9">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="119px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">DOB</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dob") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Weight</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("weight") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Blood Group</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFCCCC">
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>A1+</asp:ListItem>
                            <asp:ListItem>A1-</asp:ListItem>
                            <asp:ListItem>A2+</asp:ListItem>
                            <asp:ListItem>A2-</asp:ListItem>
                            <asp:ListItem>B1+</asp:ListItem>
                            <asp:ListItem>B1-</asp:ListItem>
                            <asp:ListItem>B2+</asp:ListItem>
                            <asp:ListItem>B2-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Last Donate On</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("lastdonateon") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Address</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("address") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">State</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" BackColor="#FFCCCC" ForeColor="#000066" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style24" style="font-size: 15px; ">City</td>
                    <td class="auto-style25">
                        <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#FFCCCC" ForeColor="#000066">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style24" style="font-size: 15px; ">District</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("district") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Taluk</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("taluk") %>' BackColor="#FFCCCC" ForeColor="#333399" Height="18px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Contact 1</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("contact1") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Conatct 2</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("contact2") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Email Id</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("email") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" style="font-size: 15px; ">Comment</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("comment") %>' BackColor="#FFCCCC" ForeColor="#333399"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        <asp:Button ID="Button3" runat="server" Text="Update" CommandName="Update" BackColor="#FFCCFF" Font-Bold="True" Height="32px" Width="88px" OnClick="Button3_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="Cancel" CommandName="Cancel" BackColor="#FFCCFF" Font-Bold="True" Height="32px" Width="88px" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <ItemTemplate>
            <table class="auto-style1" style="border-radius:25px; background-color:yellowgreen; width: 617px;">
                <tr>
                    <td class="auto-style17" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">ID<br /></td>
                    <td class="auto-style11" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color:maroon">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </td>
                    <td rowspan="5" class="auto-style4">
                    <center>    <asp:Image ID="Image1" BorderStyle="Solid" BorderWidth="2px" BorderColor="#660066" runat="server"  Height="150px" ImageUrl='<%# Bind("userimage") %>'/></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Name</td>
                    <td class="auto-style22" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color:maroon">
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Gender</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">DOB</td>
                    <td class="auto-style16" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("dob") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Weight</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("weight") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Blood Group</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("bloodgroup") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Last Donate On</td>
                    <td class="auto-style13" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("lastdonateon") %>'></asp:Label>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Address</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">State</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">City</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">District</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("district") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Taluk</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("taluk") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Contact 1</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("contact1") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Contact 2</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color: maroon">
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("contact2") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Email Id</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color:maroon">
                        <asp:Label ID="Label15" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23" align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 16px; color: #000066; border-spacing: 0px;">Comment</td>
                    <td class="auto-style5" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 14px; color:maroon">
                        <asp:Label ID="Label16" runat="server" Text='<%# Bind("comment") %>'></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" Height="29px" Width="78px" BackColor="#FFCCFF" Font-Bold="True" Font-Size="Small" ForeColor="#663300" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" Width="78px" Height="31px" BackColor="#FFCCFF" Font-Bold="True" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>


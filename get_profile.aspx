<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="get_profile.aspx.cs" Inherits="get_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div style="width: 771px; border-radius:25px">

        
        <asp:DataList ID="DataList1" runat="server"  Width="652px">
            <EditItemTemplate>
                
            </EditItemTemplate>
            <ItemTemplate>
                <table class="auto-style1" style="border-style: solid; border-width: 3px; border-color: inherit; background-color:yellowgreen; border-radius:25px; color: #003366;" frame="border">
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
            </table>
            </ItemTemplate>
        </asp:DataList>


    </div>
</asp:Content>


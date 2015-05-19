<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="search_blood.aspx.cs" Inherits="search_blood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 640px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div style="width: 753px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
       <table>
           <tr>
               <td align="center" style="background-color: #CCFFFF" class="auto-style2">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                   <asp:Label ID="Label7" runat="server" Text="Search Blood Group" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#660066"></asp:Label>
                   <br />
                   <br />
               </td>
           </tr>
           <tr>
               <td class="auto-style2" style="background-color: #FFFFCC" align="center">
                   &nbsp;&nbsp;<br />
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="151px" AutoPostBack="True" Font-Bold="True" Font-Size="Small" ForeColor="#660033">
                       
                       <asp:ListItem>A+</asp:ListItem>
                       <asp:ListItem>A-</asp:ListItem>
                       <asp:ListItem>O+</asp:ListItem>
                       <asp:ListItem>O-</asp:ListItem>
                       <asp:ListItem>B+</asp:ListItem>
                       <asp:ListItem>B-</asp:ListItem>
                       <asp:ListItem>AB+</asp:ListItem>
                       <asp:ListItem>AB-</asp:ListItem>
                       <asp:ListItem>A1+</asp:ListItem>
                       <asp:ListItem>A2+</asp:ListItem>
                       <asp:ListItem>A1-</asp:ListItem>
                       <asp:ListItem>A2-</asp:ListItem>
                   </asp:DropDownList>
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                   </asp:DropDownList>
&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    
                   </asp:DropDownList>
                   <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" ImageUrl="~/Windows_Live_Search_logo.png" Width="41px" OnClick="ImageButton2_Click" />
                   <br />
                   
                           <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                               <ProgressTemplate>
                                   <asp:Image ID="Image1" ImageUrl="~/dwn-loading.gif" runat="server" />
        </ProgressTemplate>
                               </asp:UpdateProgress>  
                </tr>
           <tr>
               <td class="auto-style2" align="center">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  ForeColor="#333333" GridLines="None" OnPageIndexChanged="GridView1_PageIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" Width="741px" OnRowDataBound="GridView1_RowDataBound" >
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:TemplateField HeaderText="Name">
                               <ItemTemplate>
                                   <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                               </ItemTemplate>
                               <ControlStyle Font-Size="Small" />
                               <HeaderStyle Font-Bold="True" Font-Size="Large"/>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Blood Group">
                               <ItemTemplate>
                                   <center><asp:Label ID="Label3" runat="server" Text='<%# Bind("bloodgroup") %>'></asp:Label></center>
                               </ItemTemplate>
                               <ControlStyle />
                               <HeaderStyle Font-Bold="True" Font-Size="Large" />
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Address">
                               <ItemTemplate>
                                   <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                               </ItemTemplate>
                               
                               <HeaderStyle Font-Bold="True" Font-Size="Large" />
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Contact">
                               <ItemTemplate>
                                   <asp:Label ID="Label5" runat="server" Text='<%# Bind("contact1") %>'></asp:Label>
                               </ItemTemplate>
                              
                               <HeaderStyle Font-Bold="True" Font-Size="Large" />
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Email Id">
                               <ItemTemplate>
                                   <asp:Label ID="Label6" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                               </ItemTemplate>
                               
                               <HeaderStyle Font-Bold="True" Font-Size="Large" />
                           </asp:TemplateField>
                       </Columns>
                       <EditRowStyle BackColor="#2461BF" />
                       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#EFF3FB" />
                       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F5F7FB" />
                       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                       <SortedDescendingCellStyle BackColor="#E9EBEF" />
                       <SortedDescendingHeaderStyle BackColor="#4870BE" />
                   </asp:GridView>
               </td>
           </tr>
           
       </table>
                           </ContentTemplate>
                           </asp:UpdatePanel>
   </div>
</asp:Content>


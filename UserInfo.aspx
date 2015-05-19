<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div style="background-color:yellowgreen; border-radius:15px; width: 731px; height: 520px;">
   <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <center>  <table style="">
            <tr>
                <td>
                    
                    <asp:TextBox ID="TextBox1" placeholder="enter name" runat="server" Width="178px" BackColor="#CDEFF1" Height="24px"></asp:TextBox>
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
                <td>
                    <br />
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Windows_Live_Search_logo.png" runat="server" Height="24px" OnClick="ImageButton1_Click" Width="46px"></asp:ImageButton>

                    <br />
                    <br />

                </td>
            </tr>
        </table>
</center>      
                <center>  
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="727px" Height="326px"><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  OnRowCommand="GridView1_RowCommand"  B CellPadding="4" GridLines="None" Height="447px" Width="736px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                  
                   
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Bind("Id") %>' OnClick="LinkButton1_Click" Text='<%# Bind("name") %>'></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle  ForeColor="Maroon" />
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Blood Group">
                <ItemTemplate>
                   <center> <asp:Label ID="Label2" runat="server" Text='<%# Bind("bloodgroup") %>'></asp:Label></center>
                </ItemTemplate>
                <ControlStyle  ForeColor="Maroon" />
               
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Image">
                <ItemTemplate>
                    <center><asp:Image ID="Image1" runat="server" height="30px"  ImageUrl='<%# Bind("userimage") %>' /></center>
                </ItemTemplate>
               
            </asp:TemplateField>
        </Columns>
       
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
       
    </asp:GridView></asp:Panel>
                
            </ContentTemplate>
        </asp:UpdatePanel>
     
   </center> 
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/request master.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    <asp:GridView ID="GridView1" DataKeyNames="id" runat="server" AutoGenerateColumns="False" BorderStyle="None" GridLines="None" Width="455px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    Hi i am&nbsp;
                    <asp:LinkButton ID="LinkButton1" ForeColor="Green" runat="server" Text='<%# Bind("p_name") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    I need&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" ForeColor="Green" runat="server" Text='<%# Bind("blood_group") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    my contact no is&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" ForeColor="Green" Text='<%# Bind("contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
   </div>

    <div>
        <asp:DataList   ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand" >
        <ItemTemplate>
            Hi.. I am
            <asp:LinkButton ID="LinkButton2" CommandName="edit" CommandArgument="id"  runat="server" Text='<%# Bind("p_name") %>'></asp:LinkButton>
            ,I want to need
            <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Bind("blood_group") %>'></asp:LinkButton>
            &nbsp;group&nbsp;Blood.Please Contact me,.My Contact no:-<asp:LinkButton ID="LinkButton4" runat="server" Text='<%# Bind("contact") %>'></asp:LinkButton>
        </ItemTemplate>
            </asp:DataList>
       
    </div>
</asp:Content>


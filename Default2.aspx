<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage6.master" Theme="SkinFile" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">

        #forgottbl {

           
            background-color:gray;

            margin-top:200px;

            height:280px;
            width:300px;
          display:none;

        }
        .auto-style1 {
            height: 18px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 26px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <title></title>
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript">

        function showtbl() {

            var d = document.getElementById("forgottbl");
            var v = document.getElementById("tbl1");
           // v.style.display = "none";
            d.style.display = "block";

        }
        function mm() {

            $("#ImageButton2").hide();



        }

    
function myFunction(x) {
    x.style.background = "#FF66FF";
}
</script>

 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">


    <cc1:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="ImageButton2" PopupControlID="d1"  OnOkScript="mm()" CancelControlID="ImageButton3" runat="server"></cc1:ModalPopupExtender>
    <div style="margin-left:-60px">
        <asp:ImageButton ImageUrl="~/images.jpg" ID="ImageButton2" runat="server" Height="66px" />
    </div>
    <div style="margin-left:-930px;margin-top:10px; width: 150px; height: 203px;">
        <table id="forgottbl" style="border-radius:25px;">
            <tr>
                <td class="auto-style3" colspan="2"></td>
            </tr>
            <tr>
                <td>Email_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
              <tr>
                <td>Mob_no</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
              <tr>
                <td colspan="2">
                    <asp:Button ID="Create" runat="server" Text="Enter" OnClick="Create_Click" /></td>
                
            </tr>
            <tr>
                <asp:Label ID="Label1" ForeColor="red" runat="server" ></asp:Label>
            </tr>
        </table>
    </div>
   
 
    <div id ="d1" style="margin-top:-0px"  >
        <table id="tbl1" style="height: 400px; width: 400px; background-color:greenyellow;border-radius: 50px;">
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;" colspan="2"><strong><center>
                    <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/admin_login.gif" Width="401px" />
                    </center></strong></td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC" align="center">Login_id</td>
                <td align="center">
                    &nbsp;<asp:TextBox ID="TextBox3"    runat="server" Width="170px" Height="25px" OnTextChanged="TextBox3_TextChanged"  ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC" align="center">Password</td>
                <td align="center">
                    <asp:TextBox ID="TextBox4" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <br />
                    <center style="height: 37px"><asp:ImageButton ID="ImageButton1" ImageUrl="~/th (1).jpg" Height="46px" runat="server" Width="137px" OnClick="ImageButton1_Click" /></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td class="auto-style1" colspan="2">
                    <h6 style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If forgot your password &nbsp;&nbsp;
                       <%-- <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="showtbl()" ForeColor="Red" Font-Size="Small" >Forgot password</asp:LinkButton>--%>
                        <%--<a style="color:red" href="Default2.aspx" onclick="showtbl()" >forgot password</a>--%>
                        <input type="button" onclick="showtbl()" value="Forgot password" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <div style="margin-left:400px; height: 21px; width: 240px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton3" ImageUrl="~/cancel-button-icone-4269-48.png" Height="15px" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div></td>
            </tr>
        </table>
    </div>
    
        
    
</asp:Content>

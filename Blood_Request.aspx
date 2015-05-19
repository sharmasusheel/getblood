<%@ Page Title="" Language="C#" Theme="SkinFile"  MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Blood_Request.aspx.cs" Inherits="Blood_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            text-decoration: underline;
        }


        .auto-style3 {
            height: 65px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div id ="div1">
    <center> <div style="background-color: #EFC8C0; margin-left:-30px ";>
       <div><center><h2 style="color: #336600;  font-family: georgia, 'Times New Roman', Times, serif" class="auto-style2"> Blood Request Form</h2>
           <p style="color: #336600; font-family: georgia, 'Times New Roman', Times, serif"> &nbsp;</p></center></div>
       <div><center><h4 style="text-align: justify; font-family: georgia, 'Times New Roman', Times, serif; font-size: 13px;">&quot;Bhopal Blood Bank&quot; realizes the importance of providing safe blood to patients in a timely hassle free manner. Kindly fill this request form below and submit.</h4>
           <p style="text-align: justify; font-family: georgia, 'Times New Roman', Times, serif; font-size: 13px;">&nbsp;</p></center></div>
      <centre> <table style="width: 881px; height: 507px">
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style10" rowspan="10">
                   <asp:Image ID="Image1" ImageUrl="~/Blood_request.jpg" runat="server" Height="242px" Width="240px"></asp:Image>
               </td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style13">
                   &nbsp;</td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style16">
                   <b>Patient&#39;s
Name:-
               </b>
               </td>
               <td class="auto-style9">

                   <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox>

               &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="FIELD IS REQIRED....." ForeColor="Red"></asp:RequiredFieldValidator>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               </td>
               
           </tr>
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style3">

                   </td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style3">

                   <b>Suffering From :-</b></td>
               <td class="auto-style3">

                   <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="225px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="FIELD IS REQIRED....." ForeColor="Red"></asp:RequiredFieldValidator>
                   &nbsp;&nbsp;
                   
               </td>
           </tr>
           <tr>
               <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   &nbsp;</td>
               <td class="auto-style17" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   <strong>Doctor&#39;s Name:-</strong></td>
               <td class="auto-style3">

                   <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               </td>
           </tr>
           <tr>
               <td class="auto-style7" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   &nbsp;</td>
               <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   Hospital Address:-</td>
               <td class="auto-style8">

                   <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="225px"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="FIELD IS REQIRED....." ForeColor="Red"></asp:RequiredFieldValidator>
                   
               </td>
           </tr>
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style11">

                   &nbsp;</td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style19">

                   <b>Blood Group:-</b></td>
               <td class="auto-style12">

                   <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="115px">
                     
                       <asp:ListItem>A+</asp:ListItem>
                       <asp:ListItem>A-</asp:ListItem>
                       <asp:ListItem>O+</asp:ListItem>
                       <asp:ListItem>O-</asp:ListItem>
                       <asp:ListItem>B+</asp:ListItem>
                       <asp:ListItem>B-</asp:ListItem>
                       <asp:ListItem>AB-</asp:ListItem>
                       <asp:ListItem>AB+</asp:ListItem>
                       <asp:ListItem>A1+</asp:ListItem>
                       <asp:ListItem>A1-</asp:ListItem>
                       <asp:ListItem>A2+</asp:ListItem>
                       <asp:ListItem>A2-</asp:ListItem>
                       <asp:ListItem>A1B+</asp:ListItem>
                       <asp:ListItem>A1B-</asp:ListItem>
                       <asp:ListItem>A2B+</asp:ListItem>
                       <asp:ListItem>A2B-</asp:ListItem>
                   </asp:DropDownList>

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="FIELD IS REQIRED....." ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />

               </td>
           </tr>
           <tr>
               <td class="auto-style4" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   &nbsp;</td>
               <td class="auto-style1" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600">

                   Required Date:-</td>
               <td class="auto-style5">

                   <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="225px"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               </td>
           </tr>
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style14">

                   &nbsp;</td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style21">

                   <b>Contact No.:-</b></td>
               <td class="auto-style15">

                   <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="225px"></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="FIELD IS REQIRED....." ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   &nbsp;&nbsp;

               </td>
           </tr>
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style13">

                   &nbsp;</td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style16">

                   <b>Place:-</b></td>
               <td class="auto-style9">

                   <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="225px" ></asp:TextBox>

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               </td>
           </tr>
           <tr>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style13">

                   &nbsp;</td>
               <td style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #336600" class="auto-style16">

                   <b>Message:-</b></td>
               <td class="auto-style9">

                   <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Height="41px" Width="225px"></asp:TextBox>

               </td>
           </tr>
           <tr>
               <td>

                   &nbsp;</td>
               <td colspan="2">

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   <asp:ImageButton ID="ImageButton1" ImageUrl="~/send.png" Height="50" runat="server" OnClick="ImageButton1_Click"></asp:ImageButton>
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Label ID="Label1" runat="server" ForeColor="#3333ff" Font-Bold="true" ></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
               </td>
           </tr>
       </table></centre>
   </div></center>
        </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/adminloginmaser.master" AutoEventWireup="true" CodeFile="adminloogin.aspx.cs" Inherits="adminloogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <meta charset="utf-8">
  <title>jQuery UI Dialog - Modal form</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
    body { font-size: 62.5%; }
    label, input { display:block; }
    input.text { margin-bottom:12px; width:95%; padding: .4em; }
    fieldset { padding:0; border:0; margin-top:25px; }
    h1 { font-size: 1.2em; margin: .6em 0; }
    div#users-contain { width: 350px; margin: 20px 0; }
    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
    .ui-dialog .ui-state-error { padding: .3em; }
    .validateTips { border: 1px solid transparent; padding: 0.3em; }
  </style>
  <script>
      $(function () {
          var dialog, form,

            // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
            emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
            name = $("#name"),
            email = $("#email"),
            password = $("#password"),
            allFields = $([]).add(name).add(email).add(password),
            tips = $(".validateTips");

          function updateTips(t) {
              tips
                .text(t)
                .addClass("ui-state-highlight");
              setTimeout(function () {
                  tips.removeClass("ui-state-highlight", 1500);
              }, 500);
          }

          function checkLength(o, n, min, max) {
              if (o.val().length > max || o.val().length < min) {
                  o.addClass("ui-state-error");
                  updateTips("Length of " + n + " must be between " +
                    min + " and " + max + ".");
                  return false;
              } else {
                  return true;
              }
          }

          function checkRegexp(o, regexp, n) {
              if (!(regexp.test(o.val()))) {
                  o.addClass("ui-state-error");
                  updateTips(n);
                  return false;
              } else {
                  return true;
              }
          }

          function addUser() {
              var valid = true;
              allFields.removeClass("ui-state-error");

              valid = valid && checkLength(name, "username", 3, 16);
              valid = valid && checkLength(email, "email", 6, 80);
              valid = valid && checkLength(password, "password", 5, 16);

              valid = valid && checkRegexp(name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
              valid = valid && checkRegexp(email, emailRegex, "eg. ui@jquery.com");
              valid = valid && checkRegexp(password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9");

              if (valid) {
                  $("#users tbody").append("<tr>" +
                    "<td>" + name.val() + "</td>" +
                    "<td>" + email.val() + "</td>" +
                    "<td>" + password.val() + "</td>" +
                  "</tr>");
                  dialog.dialog("close");
              }
              return valid;
          }

          dialog = $("#dialog-form").dialog({
              autoOpen: false,
              height: 500,
              width: 600,
              modal: true,

              Cancel: function () {
                  dialog.dialog("close");
              }


          });

          form = dialog.find("form").on("submit", function (event) {
              event.preventDefault();
              addUser();
          });

          $("#create-user").button().on("click", function () {
              dialog.dialog("open");
          });
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="dialog-form" title="Create new user">
  <p class="validateTips">All form fields are required.</p>
 
  <form id="Form1" runat="server">
   <table style="height: 340px; width: 655px">
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 21px; color: #660066; text-decoration: underline;" colspan="2"><strong><center>
                    <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/admin_login.gif" Width="401px" />
                    </center></strong></td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">Login_id</td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 17px; color: #3333CC">Password</td>
                <td>
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
                
                <td class="auto-style1">
                    <h6 style="color:blue">To change the password&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" Font-Size="Small">Change password</asp:LinkButton>
                    </h6></td>
            </tr>
        </table>
  </form>
</div>
 
 
<button id="create-user">Create new user</button>
</asp:Content>


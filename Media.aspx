<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Media.aspx.cs" Inherits="Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 179px;
            width: 740px;
        }
        .auto-style7 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <div style="height: 1226px; width: 897px ; background-color:lightseagreen">
        <table>
            <tr>
                <td class="auto-style6">

                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                        <ContentTemplate>
                          <center>  <asp:Image ID="Image1" runat="server" Height="310px" Width="570px" /></center>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
            </tr>
            <tr>
                <td align="justify" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 15px">
                 <center><h3 style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 25px; color: #0000CC; text-decoration: underline overline;">   BRIEF NEWS</h3></center>
                    <br />
                 <h4 class="auto-style7" style="font-family: georgia, 'Times New Roman', Times, serif; font-size: 20px; color: #990000">  World Red Cross Day</h4> <br />
&nbsp;<strong>The tradition of celebration of the World Red Cross Day on May 8th, was this year observed by paying tribute to the volunteers for their unprecedented contribution to the people in need. A seminar was held at the National Headquarter on the theme, ‘Our strength, Our future- Committed Volunteer’ and in this seminar the experienced members of Indian Red Cross Society, commended the volunteers for their selfless efforts. Since the inception of Red Cross, voluntary action has been its quintessence. Volunteering, serves as a means in helping the society to bridge the gap between the crisis and the crisis management.

In the States of Jammu & Kashmir, Bihar, Himachal Pradesh, Orissa, Jharkhand, Chandigarh and Kolkata, celebrations were made by honoring the Red Cross Volunteers. The volunteers were felicitated with complete gusto and their altruistic outlook towards the Society was acknowledged. Governors and Ministers of the respective states also attended the programmes and all this got a good coverage in the leading newspapers and television channels throughout the country. Message on the theme and radio talks were also relayed by many stations of All India Radio.</strong><br />
                    <br />
                      <h4 style="font-size: 20px; font-family: georgia, 'Times New Roman', Times, serif; color: #990000; text-decoration: underline">  World Health Day</h4>
                    <p>  &nbsp;</p>
                    <p align="justify" class="text">
                        <strong>Every year on April 7th the world celebrates World Health Day and this year too events were organized to mark the importance of health for healthy and happy lives.
                    </strong>
                    </p>
                    <p align="justify" class="text">
                        <strong>This year’s theme selected by World Health Organization was “Working together for health”. The activities were carried out by the NHQ and State Level of the Indian Red Cross Society on the same theme.
                    </strong>
                    </p>
                    <p align="justify" class="text">
                        <strong>In the seminars organized, Doctors delivered there discourse on the subjects of public health and disseminated information to live a healthy life. The Headquarter also distributed the advocacy toolkit issued by WHO on “Working together for health” to all its branches. The tool kit enlightens, on the issue that it is a global responsibility to tackle with crisis in health workforce</strong></p>
                    <p align="justify" class="text">
                        &nbsp;</p>
                    <br />
                    <br />
                    <br />
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            

        </table>

    </div>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPages/membermaster.master" AutoEventWireup="true" CodeFile="contactm.aspx.cs" Inherits="contactm" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content" style="min-height: 600px;">
<div style="width: 400px; float: left;  padding: 25px 0px 0px 10px; margin-left: 50px;">
<img src="Images/contact_title.jpg" /><br />
<table>
<tr><td>First Name: </td><td><asp:TextBox ID="txtFirst" runat="server" 
        Width="233px"></asp:TextBox></td></tr>
<tr><td>Last Name: </td><td><asp:TextBox ID="txtLast" runat="server" Width="233px"></asp:TextBox></td></tr>
<tr><td>Email: </td><td><asp:TextBox ID="txtEmail" runat="server" Width="233px"></asp:TextBox></td></tr>
<tr><td>Message: </td><td><asp:TextBox ID="txtMessage" runat="server" 
        TextMode="MultiLine" Rows="5" Width="341px"></asp:TextBox></td></tr>
<tr><td>&nbsp;</td><td>
    <asp:Button ID="btnSend" BackColor="#006633" ForeColor="White"  runat="server" 
        Text="Send Message" onclick="btnSend_Click" /></td></tr>
</table>

</div>
<div style="width: 300px; padding: 25px 0px 0px 0px; float: right; margin-left: 50px; margin-top: 3px;"><img src="Images/address_title.jpg" /><br /><p style="color: #666666; margin-top: 0px; font-size: 10pt;">113 East Van Buren<br />Naperville, IL 60540</p><br /><img src="Images/phone_title.jpg" /><p style="color: #666666; margin-top: 0px; font-size: 10pt;">(630) 420-7807</p><br /><img src="Images/email_title.jpg" /><p style="color: #666666; margin-top: 0px; font-size: 10pt;">info@theeducationcenter.org</p><br /></div>



<div class="clear"></div>
<br />

&nbsp;&nbsp;<iframe width="975" height="280" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=113+East+Van+Buren+Naperville,+IL+60540&amp;sll=37.0625,-95.677068&amp;sspn=67.966437,119.707031&amp;ie=UTF8&amp;hq=&amp;hnear=113+E+Van+Buren+Ave,+Naperville,+DuPage,+Illinois+60540&amp;ll=41.781489,-88.136873&amp;spn=0.017921,0.083599&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=113+East+Van+Buren+Naperville,+IL+60540&amp;sll=37.0625,-95.677068&amp;sspn=67.966437,119.707031&amp;ie=UTF8&amp;hq=&amp;hnear=113+E+Van+Buren+Ave,+Naperville,+DuPage,+Illinois+60540&amp;ll=41.781489,-88.136873&amp;spn=0.017921,0.083599&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>



</div>

</asp:Content>


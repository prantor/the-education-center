<%@ Page Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="careersignup.aspx.cs" Inherits="careersignup" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<div style="background-image: url(Images/pro_corner.jpg); min-height: 600px; background-repeat: no-repeat;">
<form action="https://cassara.infusionsoft.com/AddForms/processFormSecure.jsp" method='POST'>
<input id="infusion_xid" value="400dc6fe9b840405efd271f0a6f27e52" type="hidden" name="infusion_xid" />
<input id="infusion_type" value="CustomFormWeb" type="hidden" name="infusion_type" />
<input id="infusion_name" value="Education Center Career Forum Add User" type="hidden" name="infusion_name" />
<table style="width: 500px; margin-top: 210px; margin-left: 450px;">
	
		<tr><td>First Name: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0FirstName" class="default-input" type="text" size="50" name="Contact0FirstName" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Last Name: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0LastName" class="default-input" type="text" size="50" name="Contact0LastName" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Email: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Email" class="default-input" type="text" size="50" name="Contact0Email" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Company Name: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Company" class="default-input" type="text" size="50" name="Contact0Company" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Job Title: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0JobTitle" class="default-input" type="text" size="50" name="Contact0JobTitle" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Website: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Website" class="default-input" type="text" size="50" name="Contact0Website" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Biography: *</td><td><textarea name='Contact0_Biography' cols="38" rows="5"></textarea></td></tr>
		<tr><td>The above information  <br />is true and accurate. *</td><td><table><tr><td valign="top"><input class="check" value="Yes" type="radio" name="Contact0_Theaboveinformationistrueandaccurate" /></td><td valign='middle'>Yes</td></tr></table></td></tr>
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	<tr><td>&nbsp;</td><td style=""><input id="Submit" class="button np inf-button" value="Submit" type="submit" name="Submit" style="background-color: #48aa42; width: 100px; font-size: 16px; color: #ffffff;" /></td></tr>
</table>
</form>
</div>
</div>
</asp:Content>


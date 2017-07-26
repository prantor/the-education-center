<%@ Page Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="paymentsuccess.aspx.cs" Inherits="paymentsuccess" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<div style="background-image: url(Images/present.jpg); min-height: 550px; padding-top: 20px; background-repeat: no-repeat;">
<form></form>

<form action="https://cassara.infusionsoft.com/AddForms/processFormSecure.jsp" method='POST'>
<input id="infusion_xid" value="34a8d948a63eb11330dccc36fb0419de" type="hidden" name="infusion_xid" />
<input id="infusion_type" value="CustomFormWeb" type="hidden" name="infusion_type" />
<input id="infusion_name" value="Education Center Member Signup" type="hidden" name="infusion_name" />
<table style="padding-top: 200px; padding-left: 450px;">
<tr><td>&nbsp;</td><td style="width: 300px;">Thank you for your payment. Your transaction has been completed, and a receipt for your purchase has been emailed to you. You may log into your account at www.paypal.com/us to view details of this transaction.</td></tr>
		<tr><td>First Name: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0FirstName" class="default-input" type="text" size="55" name="Contact0FirstName" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Last Name: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0LastName" class="default-input" type="text" size="55" name="Contact0LastName" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Email: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Email" class="default-input" type="text" size="55" name="Contact0Email" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Username: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Username" class="default-input" type="text" size="55" name="Contact0Username" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Password: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0Password" class="default-input" type="text" size="55" name="Contact0Password" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Security Question: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px"><tr><td><select class="inf-select default-input"   id="Contact0_SecurityQuestion" name="Contact0_SecurityQuestion" ><option value="">Please select a security question</option><option value="What is your pet's name?">What is your pet's name?</option>
<option value="What was the make of your first car?">What was the make of your first car?</option>
<option value="Who was your childhood hero?">Who was your childhood hero?</option>
<option value="What is your favorite sports team?">What is your favorite sports team?</option>
<option value="What was your high school mascot?">What was your high school mascot?</option>
<option value="What is your favorite pastime?">What is your favorite pastime?</option>
</select></td></tr></table></td></tr>
		<tr><td>Security Answer: *</td><td><table cellpadding="0px" cellspacing="0px" border="0px">
<tr>
<td><input id="Contact0_SecurityQuestionAnswer" class="default-input" type="text" size="55" name="Contact0_SecurityQuestionAnswer" /></td>
</tr>
</table>
</td></tr>
		<tr><td>Check all that apply:</td><td>
<table cellpadding="0px" cellspacing="0px"><tr><td><input checked="checked" id="infusion_option_26" class="check" value="258" type="checkbox" name="infusion_option_26" /></td><td width="10px">&nbsp;</td><td nowrap style="vertical-align:middle;">I would like to receive news & updates</td></tr></table>
<table cellpadding="0px" cellspacing="0px"><tr><td><input id="infusion_option_28" class="check" value="262" type="checkbox" name="infusion_option_28" /></td><td width="10px">&nbsp;</td><td nowrap style="vertical-align:middle;">I would like to be listed as a resource on the career forum</td></tr></table>
		</td></tr>
			<tr><td>&nbsp;</td><td><input id="Submit" class="button np inf-button" value="Submit" type="submit" name="Submit" style="background-color: #48aa42; width: 100px; font-size: 16px; color: #ffffff;" /></td></tr>
</table>
</form>

</div>
</div>
</asp:Content>

